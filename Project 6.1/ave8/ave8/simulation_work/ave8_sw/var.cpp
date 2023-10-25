/*
 * var.cpp
 * Bit operation accuracy class.
 * 
 * Copyright (C) NEC Electronics Corporation 2001-2005
 * Copyright (C) NEC Corporation 2006-2016
 * NEC CONFIDENTIAL AND PROPRIETARY
 * All rights reserved by NEC Corporation.
 * This program must be used solely for the purpose for
 * which it was furnished by NEC Corporation. No part
 * of this program may be reproduced or disclosed to
 * others, in any form, without the prior written
 * permission of NEC Corporation. Use of copyright
 * notice does not evidence publication of the program.
 */

//#include "StdAfx.h"
#ifdef CmCLASSMATE
#include "CmVersions.h"
#if ((ClassMateAppVersionsNumber != 250) || (ClassMateAppSpecialVersionsNumber != 0x10000002))
# error ClassMate version of varop.cpp (2.50b02) is a different from that of CmVersions.h. Please check the environment.
#endif
#endif //CmCLASSMATE

//
//  var.cpp
//
#include <cstdio>
#include <cstdlib>
#include <cctype>
#include <cerrno>
#include <climits>
#if defined(sun)
#  include <alloca.h>
#elif defined(WIN32)
#  include <malloc.h>
#endif
#include "var.h"

using namespace std;

namespace cyber {

#ifdef WIN32
#pragma warning(disable : 4073)
#pragma init_seg(lib)
#pragma warning(default: 4073)
#endif //WIN32

#ifdef WIN32
#define ALLOCA(s) (char *)_alloca(s)
#else // !WIN32
#define ALLOCA(s) (char *)alloca(s)
#endif // WIN32

bool carry = true;
int inTerDummyFlag;

void CarryOn() { carry = true; }
void CarryOff() { carry = false; }


size_t width(const char *v)
{
    StringData data;
    return analyzeString(v,data);
}

UVARTYPE StrToBin(const char *p)
{
    size_t		len = 0;
    UVARTYPE	ret = 0;
    while ((*p == '0' || *p == '1') && len < BASESIZE) {
	ret = (ret << 1) | (*p - '0');
	++len;
	++p;
    }
    return ret;
}

UVARTYPE StrToOct(const char *p)
{
    size_t		len = 0;
    UVARTYPE	ret = 0;
    while ('0' <= *p && *p <= '7' && len <= BASESIZE - 3) {
	ret = (ret << 3) | (*p - '0');
	len += 3;
	++p;
    }
    return ret;
}

UVARTYPE StrToDec(const char * /*p*/)
{
    return 0;
}

UVARTYPE StrToHex(const char *p)
{
    size_t		len = 0;
    UVARTYPE	ret = 0;
    while (len <= BASESIZE - 4) {
	if (isdigit(*p))
	    ret = (ret << 4) | (*p - '0');
	else if ('a' <= *p && *p <= 'f')
	    ret = (ret << 4) | (*p - 'a' + 10);
	else if ('A' <= *p && *p <= 'F')
	    ret = (ret << 4) | (*p - 'A' + 10);
	else
	    break;
	len += 4;
	++p;
    }
    return ret;
}

UVARTYPE StrToUVARTYPE(const char *p,const int radix)
{
    switch (radix) {
      case 2:
	return StrToBin(p);
      case 8:
	return StrToOct(p);
      case 10:
	return StrToDec(p);
      case 16:
	return StrToHex(p);
      default:
	std::cerr << "Unsupported radix " << radix << "." << std::endl;
	assert(false);
    }
    return 0; // dummy
}

size_t analyzeString(const char *vstr,StringData &data)
{
    // Note: for 64 bit, check strtoul()
    size_t width;

    while (*vstr) {
	if (!isspace(*vstr))
	    break;
	vstr++;
    }
    if (!*vstr)
	return 0;
    if (*vstr == '0') {
	vstr++;
	int radix = tolower(*vstr);
	int len;
#ifndef VAR32
	int i;
	int size;
	char *tmp_str, *nptr, *endptr;
#endif // !VAR32
	if (radix == 0) {
	    // only '0'
	    data.udata = 0;
	    return 1;
	} else if (radix == 'x') {
	    // hex
	    len = strspn(++vstr,"0123456789AaBbCcDdEeFf");
	    VARASSERT(len > 0);
	    width = 4 * len;
	    if (width <= BASESIZE) {
		data.udata = StrToUVARTYPE(vstr,16);
		return width;
	    }
#ifdef VAR32
	    VARASSERT(width <= BASESIZE);
#else // !VAR32
	    size = wordSize(width);
	    data.longData = LongData::allocateBuffer(size);
	    data.longData->remainder = Remainder(width);
	    data.length = size;
	    tmp_str = ALLOCA(len + 1);
	    for (i = 0; i < len; i++)
		tmp_str[i] = *vstr++;
	    tmp_str[len] = 0;
	    endptr = &tmp_str[len];
	    if ((nptr = endptr - (BASESIZE / 4)) < tmp_str)
		nptr = tmp_str;
	    while (--size >= 0) {
		*endptr = 0;
		data.longData->data[size] = StrToUVARTYPE(nptr,16);
		if ((endptr -= (BASESIZE / 4)) < tmp_str)
		    endptr = tmp_str;
		*endptr = 0;
		if ((nptr -= (BASESIZE / 4)) < tmp_str)
		    nptr = tmp_str;
	    }
#endif // VAR32
	} else if (radix == 'b') {
	    // bin
	    len = strspn(++vstr,"01");
	    VARASSERT(len > 0);
	    width = len;
	    if (width <= BASESIZE) {
		data.udata = StrToUVARTYPE(vstr,2);
		return width;
	    }
#ifdef VAR32
	    VARASSERT(width <= BASESIZE);
#else // !VAR32
	    size = wordSize(width);
	    data.longData = LongData::allocateBuffer(size);
	    data.longData->remainder = Remainder(width);
	    data.length = size;
	    tmp_str = ALLOCA(len + 1);
	    for (i = 0; i < len; i++)
		tmp_str[i] = *vstr++;
	    tmp_str[len] = 0;
	    endptr = &tmp_str[len];
	    endptr = tmp_str + len;
	    if ((nptr = endptr - BASESIZE) < tmp_str)
		nptr = tmp_str;
	    while (--size >= 0) {
		*endptr = 0;
		data.longData->data[size] = StrToUVARTYPE(nptr,2);
		if ((endptr -= BASESIZE) < tmp_str)
		    endptr = tmp_str;
		*endptr = 0;
		if ((nptr -= BASESIZE) < tmp_str)
		    nptr = tmp_str;
	    }
#endif // VAR32
	} else if (isdigit(radix)) {
	    // oct
	    len = strspn(vstr,"01234567");
	    VARASSERT(len > 0);
	    width = 3 * len;
	    if (width <= BASESIZE) {
		data.udata = StrToUVARTYPE(vstr,8);
		return width;
	    }
#ifdef VAR32
	    VARASSERT(width <= BASESIZE);
#else // !VAR32
	    size = wordSize(width);
	    data.longData = LongData::allocateBuffer(size);
	    data.longData->remainder = Remainder(width);
	    data.length = size;
	    memset(data.longData->data,0,size * sizeof(UVARTYPE));
	    const char *p = vstr + len - 1;
	    size_t bitpos = 0;
	    size--;
	    while (p >= vstr) {
		UVARTYPE dat = *p - '0';
		data.longData->data[size] |= (dat << bitpos);
		bitpos += 3;
		if (bitpos >= BASESIZE) {
		    bitpos -= BASESIZE;
		    size--;
		    if (bitpos > 0) {
			data.longData->data[size] |= (dat >> (3 - bitpos));
		    }
		}
		p--;
	    }
#endif // VAR32
	} else {
	    std::cerr << "Radix " << radix << ", not supported." << std::endl;
	    VARASSERT(false);
	    width = BASESIZE; // dummy
	}
    } else if (*vstr == '-' || isdigit(*vstr)) {
	if (*vstr == '-') {
	    data.s = true;
	    data.sdata = strtol(vstr,0,10);
	} else {
	    data.s = false;
	    data.udata = strtoul(vstr,0,10);
	}
	if (errno == ERANGE)
	    std::cerr << "Sorry, implementation for decimal string longer than 32 bit is not enough." << std::endl;
	width = BASESIZE;
    } else {
	width = 0;
    }
    return width;
}


MemoryRangeError::MemoryRangeError(const basemem &mem,const int id) throw()
    : VarException(), m(mem), n(id) {}

MemoryRangeError::~MemoryRangeError() throw() {}

const char *AllocateError::what() const throw()
{
    return "out of memory";
}

const char *MemoryRangeError::what() const throw()
{
    return "out of range";
}


const char *ZeroDivideError::what() const throw()
{
    return "divide by 0";
}


ShiftError::ShiftError(bool is_left_shift,bool s1,size_t w1,UVARTYPE v1,
		       size_t w2,SVARTYPE v2) throw()
    : VarException()
{
    leftShift = is_left_shift;
    left.s = s1;
    left.w = w1;
    left.uv = v1;
    right.s = true;
    right.w = w2;
    right.sv = v2;
}

const char *ShiftError::what() const throw()
{
    return "negative shifter value";
}

LeftShiftError::LeftShiftError(const int v) throw()
    : VarException()
{
    sprintf(msg, "bitwidth of left shift result is too big(%d > %d)", v, MAX_BITWIDTH);
}

const char *LeftShiftError::what() const throw()
{
    return msg;
}


#ifndef VAR_LONGLONG
#  ifdef VAR32
const basevar toBaseType(const cyber::ULLVAR v)
{
    return basevar(BASESIZE,false,(UVARTYPE)v);
}
const basevar toBaseType(const cyber::SLLVAR v)
{
    return basevar(BASESIZE,true,(SVARTYPE)v);
}
#  else // !VAR32
const basevar toBaseType(const cyber::ULLVAR v)
{
    LongData *p = LongData::allocateBuffer(2);
    p->data[0] = (UVARTYPE)(v >> BASESIZE);
    p->data[1] = (UVARTYPE)v;
    return basevar(width(v),false,p);
}
const basevar toBaseType(const cyber::SLLVAR v)
{
    LongData *p = LongData::allocateBuffer(2);
    p->data[0] = (UVARTYPE)(v >> BASESIZE);
    p->data[1] = (UVARTYPE)v;
    return basevar(width(v),true,p);
}
#  endif // VAR32
#endif // !VAR_LONGLONG


//
// basevar
//

#ifndef VAR32

void basevar::deleteLongData()
{
    longData->deallocate();
}

bool isNonZeroLong(const basevar &v)
{
    UVARTYPE *p = v.longData->data;
    for (size_t n = 0; n < v.longData->length; ++n) {
	if (*p++) return true;
    }
    return false;
}

void basevar::copyLong(const basevar &v)
{
    longData = LongData::allocateBuffer(longData->length);
    longData->remainder = v.longData->remainder;
    copy(v.longData->data);
}

void basevar::setupLongData()
{
    longData = LongData::allocateBuffer(wordSize(w));
    longData->remainder = Remainder(w);
}

int basevar::eval() const {
    if (w <= BASESIZE) {
	if (s) {
	    if (sdata < (SVARTYPE)std__numeric_limits__min<int>())
		return std__numeric_limits__min<int>();
	    else if (sdata > (SVARTYPE)std__numeric_limits__max<int>())
		return std__numeric_limits__max<int>();
	    else
		return (int)sdata;
	} else if (udata > (UVARTYPE)std__numeric_limits__max<int>()) {
	    return std__numeric_limits__max<int>();
	} else {
	    return (int)udata;
	}
    } else {
	size_t size = longData->length;
	size_t n;
	UVARTYPE *p = longData->data;
	if (Minus()) {
	    for (n = 0; n < size - 1; ++n) {
		if (*p++ != ~UVARTYPE(0))
		    break;
	    }
	    if (n < size - 1
		|| (*((SVARTYPE *)p) >> (sizeof(int) * 8 - 1)) != SVARTYPE(-1))
		return INT_MIN;
	    else
		return (int)*p;
	} else {
	    for (n = 0; n < size - 1; ++n) {
		if (*p++ != 0)
		    break;
	    }
	    if (n < size - 1 || *p > (UVARTYPE)std__numeric_limits__max<int>())
		return std__numeric_limits__max<int>();
	    else
		return (int)*p;
	}
    }
}

UVARTYPE basevar::ueval() const {
    if (w <= BASESIZE) {
	if (s && sdata < 0)
	    return 0;
	return udata;
    }
    size_t size = longData->length;
    size_t n;
    UVARTYPE *p = longData->data;
    if (Minus())
	return 0;
    for (n = 0; n < size - 1; ++n) {
	if (*p++ != 0)
	    break;
    }
    if (n < size - 1)
	return UVARTYPE(-1);
    return *p;
}

SVARTYPE basevar::seval() const {
    if (w <= BASESIZE) {
	if (!s && udata > (UVARTYPE(-1) >> 1))
	    return (UVARTYPE(-1) >> 1);
	else
	    return sdata;
    }
    size_t size = longData->length;
    size_t n;
    UVARTYPE *p = longData->data;
    if (Minus()) {
	for (n = 0; n < size - 1; ++n) {
	    if (*p++ != ~UVARTYPE(0))
		break;
	}
	if (n < size - 1 || (*p >> (BASESIZE - 1)) == 0)
	    return (SVARTYPE(1) << (BASESIZE - 1));
	return *p;
    }
    for (n = 0; n < size - 1; ++n) {
	if (*p++ != 0)
	    break;
    }
    if (n < size - 1 || (*p >> (BASESIZE - 1)) != 0)
	return SVARTYPE(UVARTYPE(-1) >> 1);
    return *p;
}

#endif // !VAR32

int basevar::declength() const
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	UVARTYPE v = udata;
	int n = 1;
	while (v >= UVARTYPE(10)) {
	    v /= UVARTYPE(10);
	    ++n;
	}
	return n;
#ifndef VAR32
    } else {
	if (*this == 0)
	    return 1;
	basevar v(*this);
	int n = 1;
	const basevar INT10MAX(w,s,UVARTYPE(1000000000));
	while (v >= INT10MAX) {
	    v.assign(v / INT10MAX);
	    n += 9;
	}
	int v10 = v.eval();
	while (v10 >= 10) {
	    v10 /= 10;
	    ++n;
	}
	return n;
    }
#endif // !VAR32
}

int basevar::octlength() const
{
    UVARTYPE	v;
    int			ret_base;
    int			remain;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	v = udata & UMASKS(w);
	ret_base = 0;
	remain = 0;
#ifndef VAR32
    } else {
	size_t n = 0;
	v = longData->data[0] & UMASKS(longData->remainder);
	if (v == 0) {
	    for (n = 1; n < longData->length; ++n) {
		v = longData->data[n];
		if (v != 0)
		    break;
	    }
	}
	ret_base = ((longData->length - 1 - n) * BASESIZE) / 3;
	remain = ((longData->length - 1 - n) * BASESIZE) % 3;
    }
#endif // !VAR32
    if (v == 0) {
	// i.e. all 0.
	return 1;
    }
    UVARTYPE mask;
    int n = (BASESIZE + remain) / 3;
    switch ((BASESIZE + remain) % 3) {
      case 0:
	mask = UVARTYPE(-1) << (BASESIZE - 3);
	break;
      case 1:
	mask = UVARTYPE(-1) << (BASESIZE - 1);
	if ((v & mask) != 0)
	    return ret_base + n + 1;
	mask = UVARTYPE(-1) << (BASESIZE - 4);
	break;
      default: // 2
	mask = UVARTYPE(-1) << (BASESIZE - 2);
	if ((v & mask) != 0)
	    return ret_base + n + 1;
	mask = UVARTYPE(-1) << (BASESIZE - 5);
    }
    for ( ; n >= 1; --n) {
	if ((v & mask) != 0)
	    break;
	mask >>= 3;
    }
    return ret_base + n;
}

int basevar::hexlength() const
{
    UVARTYPE	v;
    int			ret_base;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	v = udata & UMASKS(w);
	ret_base = 0;
#ifndef VAR32
    } else {
	v = longData->data[0] & UMASKS(longData->remainder);
	ret_base = (longData->length - 1) * (BASESIZE / 4);
	if (v == 0) {
	    for (size_t n = 1; n < longData->length; ++n) {
		ret_base -= (BASESIZE / 4);
		v = longData->data[n];
		if (v != 0)
		    break;
	    }
	}
    }
#endif // !VAR32
    if (v == 0) {
	// i.e. all 0.
	return 1;
    }
    UVARTYPE mask = (UVARTYPE(-1) << (BASESIZE - 4));
    int n;
    for (n = (BASESIZE - 1) / 4; n > 0; --n) {
	if ((v & mask) != 0)
	    break;
	mask >>= 4;
    }
    return ret_base + n + 1;
}

int basevar::length(const VarOutputFormat f) const
{
    switch (f) {
      case VAR_FORM_BIN:
	return width();
      case VAR_FORM_OCT:
	return octlength();
      case VAR_FORM_DEC:
	if (Minus()) {
#ifdef VAR32
	    if (width() == BASESIZE) {
		if (udata == SIGNBIT) {
#ifdef VAR_LONGLONG
		    return 19 + 1;
#else // if !VAR_LONGLONG
		    return 10 + 1;
#endif // VAR_LONGLONG
		} else {
		    return basevar(BASESIZE,false,- sdata).declength() + 1;
		}
	    } else {
#endif // VAR32
		if (carry) {
		    return (- *this).declength() + 1;
		} else {
		    return (- expand(width() + 1)).declength() + 1;
		}
#ifdef VAR32
	    }
#endif // VAR32
	} else {
	    return declength();
	}
      case VAR_FORM_LOWER_HEX:
      case VAR_FORM_UPPER_HEX:
	return hexlength();
      default:
	VARASSERT(false);
	return 0;
    }
}

std::ostream &basevar::streamout(std::ostream &os) const
{
    ios_base::fmtflags flags = os.flags();
    VarOutputFormat f = VAR_FORM_DEC;
    if (flags & ios_base::oct) {
	f = VAR_FORM_OCT;
    } else if (flags & ios_base::hex) {
	if (flags & ios_base::uppercase)
	    f = VAR_FORM_UPPER_HEX;
	else
	    f = VAR_FORM_LOWER_HEX;
    }
    size_t len = length(f);
    if (flags & ios_base::showbase) {
	if (f == VAR_FORM_OCT)
	    ++len;
	if (f == VAR_FORM_UPPER_HEX || f == VAR_FORM_LOWER_HEX)
	    len += 2;
    }
    size_t os_w = os.width();
    char *buf = ALLOCA(len + os_w + 1);
    char *p = buf;
    size_t n;
    char c = os.fill();
    bool minus = Minus();
    if (f == VAR_FORM_DEC && (minus || (flags & ios_base::showpos))) {
	if (flags & ios_base::internal) {
	    *p++ = (minus ? '-' : '+');
	    if (os_w > len) {
		for (n = 0; n < os_w - len - 1; ++n)
		    *p++ = c;
	    }
	} else {
	    if (os_w > len) {
		for (n = 0; n < os_w - len - 1; ++n)
		    *p++ = c;
	    }
	    *p++ = (minus ? '-' : '+');
	}
    } else if ((flags & ios_base::adjustfield) && (flags & ios_base::right)) {
	if (os_w > len) {
	    for (n = 0; n < os_w - len - 1; ++n)
		*p++ = c;
	}
    }		
    if (flags & ios_base::showbase) {
	if (f == VAR_FORM_OCT)
	    *p++ = '0';
	else if (f == VAR_FORM_UPPER_HEX || f == VAR_FORM_LOWER_HEX) {
	    *p++ = '0';
	    if (flags & ios_base::uppercase)
		*p++ = 'X';
	    else
		*p++ = 'x';
	}
    }
    if (minus && f == VAR_FORM_DEC) {
#ifdef VAR32
	if (width() == BASESIZE) {
	    if (udata == SIGNBIT) {
		basevar(BASESIZE,false,std__numeric_limits__min<SVARTYPE>()).sout(p,f);
	    } else {
		basevar(BASESIZE,false,- sdata).sout(p,f);
	    }
	} else {
#endif // VAR32
	    if (carry) {
		(- *this).sout(p,f);
	    } else {
		(- expand(width() + 1)).sout(p,f);
	    }
#ifdef VAR32
	}
#endif // VAR32
    } else {
	sout(p,f);
    }
    return os << buf;
}

void basevar::fout(FILE *fp,const VarOutputFormat f) const
{
    size_t len = length(f);
    char *buf = ALLOCA(len + 1);
    sout(buf,f);
    fprintf(fp,buf);
}

void basevar::binout(char buf[]) const
{
    UVARTYPE mask;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	mask = UVARTYPE(1) << (w - 1);
	for (size_t n = 0; n < w; ++n) {
	    *buf++ = (udata & mask ? '1' : '0');
	    mask >>= 1;
	}
#ifndef VAR32
    } else {
	UVARTYPE v;
	v = longData->data[0];
	mask = UVARTYPE(1) << (longData->remainder - 1);
	for (size_t n = 0; n < longData->remainder; ++n) {
	    *buf++ = (v & mask ? '1' : '0');
	    mask >>= 1;
	}
	for (size_t i = 1; i < longData->length; ++i) {
	    v = longData->data[i];
	    mask = SIGNBIT;
	    for (size_t n = 0; n < BASESIZE; ++n) {
		*buf++ = (v & mask ? '1' : '0');
		mask >>= 1;
	    }
	}
    }
#endif // !VAR32
    *buf = 0;
}

void basevar::octout(char buf[]) const
{
    UVARTYPE	v;
#ifndef VAR32
    int			remain;
    UVARTYPE	remain_data;
#endif // !VAR32
    int			len = octlength();

    buf += len;
    *buf-- = 0;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	v = udata & UMASKS(w);
	while (len > 0) {
	    *buf-- = (char)('0' + (v & 7));
	    v >>= 3;
	    --len;
	}
#ifndef VAR32
    } else {
	remain = 0;
	remain_data = 0;
	int n = longData->length - 1;
	while (true) {
	    if (n >= 0)
		v = longData->data[n];
	    else
		v = 0;
	    if (n == 0)
		v &= UMASKS(longData->remainder);
	    switch (remain) {
	      case 1:
		*buf-- = (char)('0' + (((v << 1) | remain_data) & 7));
		v >>= 2;
		remain = BASESIZE - 2;
		--len;
		break;
	      case 2:
		*buf-- = (char)('0' + (((v << 2) | remain_data) & 7));
		v >>= 1;
		remain = BASESIZE - 1;
		--len;
		break;
	      default: // 0
		remain = BASESIZE;
	    }
	    if (len == 0)
		return;
	    while (remain >= 3) {
		*buf-- = (char)('0' + (v & 7));
		v >>= 3;
		if (--len <= 0)
		    return;
		remain -= 3;
	    }
	    remain_data = v;
	    --n;
	}
    }
#endif // !VAR32
}

void basevar::decout(char buf[]) const
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
#if 0
	UVARTYPE v = udata;
	buf += declength();
	*buf-- = 0;
	while (v >= UVARTYPE(10)) {
	    *buf-- = '0' + (v % UVARTYPE(10));
	    v /= UVARTYPE(10);
	}
#else
#  ifdef VAR_LONGLONG
#    ifdef WIN32
	sprintf(buf,"%I64u",udata);
#    else // WIN32
	sprintf(buf,"%llu",udata);
#    endif // WIN32
#  else // VAR_LONGLONG
	sprintf(buf,"%lu",udata);
#  endif // VAR_LONGLONG
#endif // 0

#ifndef VAR32
    } else {
	if (*this == 0) {
	    *buf++ = '0'; *buf = 0;
	    return;
	}
	basevar v(*this);
	buf += v.declength();
	*buf-- = 0;
	int n;
	int v10;
	const basevar INT10MAX(w,s,UVARTYPE(1000000000));
	while (v >= INT10MAX) {
	    v10 = (v % INT10MAX).eval();
	    for (n = 0; n < 9; ++n) {
		*buf-- = (char)('0' + (v10 % 10));
		v10 /= 10;
	    }
	    v.assign(v / INT10MAX);
	}
	v10 = v.eval();
	while (v10 >= 10) {
	    *buf-- = (char)('0' + (v10 % 10));
	    v10 /= 10;
	}
	*buf = (char)('0' + v10);
    }
#endif // !VAR32
}

void basevar::hexout(char buf[],const bool upper) const
{
    if (*this == 0) {
	*buf++ = '0'; *buf = 0;
	return;
    }
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	UVARTYPE v = udata & UMASKS(w);
	int len = hexlength();
	buf += len;
	*buf-- = 0;
	while (--len >= 0) {
	    int v4 = (int)(v & 0xf);
	    if (v4 < 10)
		*buf-- = (char)('0' + v4);
	    else
		*buf-- = (char)((upper ? 'A' : 'a') + v4 - 10);
	    v >>= 4;
	}
#ifndef VAR32
    } else {
	basevar v(*this);
	int len = v.hexlength();
	buf += len;
	*buf-- = 0;
	UVARTYPE vv;
	for (size_t n = longData->length - 1; n > 0; --n) {
	    vv = longData->data[n];
	    for (size_t i = 0; i < BASESIZE / 4; ++i) {
		int v4 = (int)(vv & 0xf);
		if (v4 < 10)
		    *buf-- = (char)('0' + v4);
		else
		    *buf-- = (char)((upper ? 'A' : 'a') + v4 - 10);
		vv >>= 4;
		if (--len <= 0)
		    return;
	    }
	}
	vv = longData->data[0] & UMASKS(longData->remainder);
	for ( ; len > 0; --len) {
	    int v4 = (int)(vv & 0xf);
	    if (v4 < 10)
		*buf-- = (char)('0' + v4);
	    else
		*buf-- = (char)((upper ? 'A' : 'a') + v4 - 10);
	    vv >>= 4;
	}
    }
#endif // !VAR32
}

void basevar::sout(char buf[],const VarOutputFormat f) const
{
    switch (f) {
      case VAR_FORM_BIN:
	binout(buf);
	break;
      case VAR_FORM_OCT:
	octout(buf);
	break;
      case VAR_FORM_DEC:
	if (Minus()) {
	    *buf = '-';
#ifdef VAR32
	    if (width() == BASESIZE) {
		if (udata == SIGNBIT) {
		    basevar(BASESIZE,false,std__numeric_limits__min<SVARTYPE>()).decout(buf + 1);
		} else {
		    basevar(BASESIZE,false,- sdata).decout(buf + 1);
		}
	    } else {
#endif // VAR32
		if (carry) {
		    (- *this).decout(buf + 1);
		} else {
		    (- expand(width() + 1)).decout(buf + 1);
		}
#ifdef VAR32
	    }
#endif // VAR32
	} else
	    decout(buf);
	break;
      case VAR_FORM_LOWER_HEX:
	hexout(buf,false);
	break;
      case VAR_FORM_UPPER_HEX:
	hexout(buf,true);
	break;
      default:
	VARASSERT(false);
    }
}

#ifndef VAR32

basevar::basevar(const basevar &v)
    : w(v.w), s(v.s)
{
    if (w <= BASESIZE) {
	udata = v.udata;
    } else {
	longData = v.longData;
	++longData->refCount;
    }
}

basevar::basevar(const size_t _w,const bool _s,const UVARTYPE v)
    : w(_w), s(_s)
{
    if (w <= BASESIZE) {
	if (s)
	    sdata = SMASK(v,w);
	else
	    udata = v & UMASKS(w);
    } else {
	setupLongData();
	assignLong(v);
    }
}

basevar::basevar(const size_t _w,const bool _s,const SVARTYPE v)
    : w(_w), s(_s)
{
    if (w <= BASESIZE) {
	if (s)
	    sdata = SMASK(v,w);
	else
	    udata = v & UMASKS(w);
    } else {
	setupLongData();
	assignLong(v);
    }
}

basevar::basevar(const size_t _w,const bool _s,const basevar &v)
    : w(_w), s(_s) {
    if (w > BASESIZE) {
	setupLongData();
    }
    assign(v);
}

#endif // !VAR32

basevar::basevar(const char *str)
{
    StringData data;
    w = analyzeString(str,data);
#ifdef VAR32
    VARASSERT(w <= BASESIZE);
#endif // VAR32
    s = data.s;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	if (s)
	    sdata = SMASK(data.sdata,w);
	else
	    udata = data.sdata & UMASKS(w);
#ifndef VAR32
    } else {
	longData = data.longData;
	++longData->refCount;
    }
#endif // !VAR32
}


#ifndef VAR32

void basevar::assign(const basevar &v) {
    if (v.w <= BASESIZE) {
	if (v.s)
	    assign(v.sdata);
	else
	    assign(v.udata);
    } else if (w <= BASESIZE) {
	assign(v.longData->data[v.longData->length - 1]);
    } else {
	assignLong(v);
    }
}

void basevar::assignLong(const UVARTYPE v)
{
    if (longData->refCount > 1) {
	--longData->refCount;
	setupLongData();
    }
    size_t n;
    for (n = 0; n < longData->length - 1; ++n)
	longData->data[n] = 0;
    longData->data[longData->length - 1] = v;
}

void basevar::assignLong(const SVARTYPE v)
{
    if (longData->refCount > 1) {
	--longData->refCount;
	setupLongData();
    }
    size_t n;
    if (v < 0) {
	if (s)
	    longData->data[0] = ~UVARTYPE(0);
	else
	    longData->data[0] = (~UVARTYPE(0) & UMASKS(longData->remainder));
	for (n = 1; n < longData->length - 1; ++n)
	    longData->data[n] = ~UVARTYPE(0);
    } else {
	for (n = 0; n < longData->length - 1; ++n)
	    longData->data[n] = 0;
    }
    longData->data[longData->length - 1] = v;
}

void basevar::assignLong(const basevar &v)
{
	if (this == &v) return; //hiro add 061115
    if (v.width() <= BASESIZE) {
	if (v.s)
	    assignLong(v.sdata);
	else
	    assignLong(v.udata);
	return;
    }

    if (longData->refCount > 1) {
	--longData->refCount;
	setupLongData();
    }
    LongData *pld = longData;
    LongData *pvld = v.longData;
    size_t len = pld->length;
    size_t vlen = pvld->length;
    UVARTYPE *data = pld->data;
    UVARTYPE *vdata = pvld->data;

    if (v.w < w) {
	size_t diff;
	diff = len - vlen;
	if (v.s && (vdata[0] & SIGNBIT)) {
	    memset(data,0xff,diff * sizeof(UVARTYPE));
	} else {
	    memset(data,0,diff * sizeof(UVARTYPE));
	}
	memcpy(&data[diff],vdata,vlen * sizeof(UVARTYPE));
    } else {
	const UVARTYPE *topdata = &vdata[vlen - len];
	memcpy(data,topdata,len * sizeof(UVARTYPE));
    }
    if (s)
	data[0] = SMASK(data[0],pld->remainder);
    else
	data[0] &= UMASKS(pld->remainder);
}
#endif // !VAR32


#ifndef VAR32

LongData::HeapMap LongData::heapMap;

static const int BITDATA_ALLOC_SIZE = 16;


LongData::Heap::~Heap()
{
#if 0
    VARASSERT(emptyList.size() == (size_t)allocatedSize);
    std::vector<UVARTYPE *>::iterator it;
    for (it = allocatedList.begin(); it != allocatedList.end(); ++it)
	delete [] *it;
#else
    for (int n = 0; n < allocatedSize; ++n)
	free(allocatedList[n]);
    free(allocatedList);
    free(emptyList);
#endif
}

LongData *LongData::Heap::get()
{
#if 0
    if (emptyList.empty())
	newArea();
    LongData *ret = emptyList.back();
    emptyList.pop_back();
    //std::cout << "get " << ret << std::endl;
    ret->refCount = 1;
    return ret;
#else
    if (emptyLast == 0)
	newArea();
    LongData *ret = emptyList[--emptyLast];
    ret->refCount = 1;
    return ret;
#endif
}

void LongData::Heap::newArea()
{
    //cout << "newArea " << wordLength << endl;
    size_t step_size = (sizeof(LongData) + sizeof(UVARTYPE) - 1)
	/ sizeof(UVARTYPE) + wordLength - 1;
#if 0
    UVARTYPE *tmp = new UVARTYPE[step_size * BITDATA_ALLOC_SIZE];
    allocatedList.push_back(tmp);
    allocatedSize += BITDATA_ALLOC_SIZE;
#else
    UVARTYPE *tmp = (UVARTYPE *)malloc(step_size * BITDATA_ALLOC_SIZE
				       * sizeof(UVARTYPE));
    if (tmp == 0)
	throw AllocateError();
    ++allocatedSize;
    allocatedList = (UVARTYPE **)realloc(allocatedList,
					 allocatedSize * sizeof(UVARTYPE *));
    if (allocatedList == 0)
	throw AllocateError();
    allocatedList[allocatedSize - 1] = tmp;
#endif
#if 0
    emptyList.reserve(allocatedSize);
    for (int n = 0; n < BITDATA_ALLOC_SIZE; ++n) {
	LongData *new_data = reinterpret_cast<LongData *>(tmp);
	new_data->length = wordLength;
	emptyList.push_back(new_data);
	tmp += step_size;
    }
#else
    emptyList = (LongData **)realloc(emptyList,allocatedSize *
				     BITDATA_ALLOC_SIZE * sizeof(LongData *));
    if (emptyList == 0)
	throw AllocateError();
    for (int n = 0; n < BITDATA_ALLOC_SIZE; ++n) {
	LongData *new_data = reinterpret_cast<LongData *>(tmp);
	new_data->heap = this;
	new_data->length = wordLength;
	emptyList[emptyLast++] = new_data;
	tmp += step_size;
    }
#endif
}

LongData::HeapMap::~HeapMap()
{
#if 0
    std::vector<Heap *>::iterator it;
    for (it = heap.begin(); it != heap.end(); ++it)
	delete *it;
#else
    for (size_t n = 0; n < heapSize; ++n)
	delete heap[n];
    free(heap);
#endif
}

LongData::Heap *LongData::HeapMap::getHeap(const size_t s)
{
#if 0
    if (s >= heap.size())
	heap.resize(s + 1,0);
    Heap *ret = heap[s];
    if (ret == 0)
	ret = heap[s] = new Heap(s);
#else
    if (s >= heapSize) {
	heap = (Heap **)realloc(heap,(s + 1) * sizeof(Heap *));
	if (heap == 0)
	    throw AllocateError();
	for (size_t n = heapSize; n <= s; ++n)
	    heap[n] = 0;
	heapSize = s + 1;
    }
    Heap *ret = heap[s];
    if (ret == 0)
	ret = heap[s] = new Heap(s);
#endif
    return ret;
}

#endif // !VAR32


//
// Index
//

bool Index::toBool() const
{
    switch (type) {
      case E_VAR:
	return value(*entity,pos);
      case E_REG:
	return value(*ereg.current,pos);
      case E_MEM:
	return emem.mem->indexValue(emem.n,pos);
      default:
	VARASSERT(false);
	return false;
    }
}

#ifndef VAR32
void Index::set(basevar &v,const int pos,const bool b)
{
    if (v.width() <= BASESIZE) {
	v.assign(b ? (v.udata | (UVARTYPE(1) << pos))
		 : (v.udata & ~(UVARTYPE(1) << pos)));
    } else {
	size_t wordpos = v.longData->length - wordSize(pos + 1);
	size_t bitpos = remainBit(pos);
	if (v.s && wordpos == 0
	    && bitpos == v.longData->remainder && b) {
	    // set MSB.
	    v.longData->data[0] |= ~UMASKS(bitpos - 1);
	} else if (b) {
	    v.longData->data[wordpos] |= (UVARTYPE(1) << bitpos);
	} else {
	    v.longData->data[wordpos] &= ~(UVARTYPE(1) << bitpos);
	}
    }
}
#endif // !VAR32


//
// Slice
//

Slice::operator const basevar () const
{
    switch (type) {
      case E_VAR:
	return value(*entity,left,right);
      case E_REG:
	return value(*ereg.current,left,right);
      case E_MEM:
	return emem.mem->sliceValue(emem.n,left,right);
      default:
	VARASSERT(false);
	return basevar(1,false,UVARTYPE(0));
    }
}

#ifndef VAR32
void Slice::set(basevar &v,const int left,const int right,const UVARTYPE value)
{
    if (v.width() <= BASESIZE) {
	UVARTYPE    mask = (UMASKS(left + 1) & ~UMASKS(right));
	v.assign((v.udata & ~mask) | ((value << right) & mask));
    } else {
	size_t slice_w = left - right + 1;
	size_t lwordpos = v.longData->length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = v.longData->length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = v.longData->data;
	UVARTYPE mask;
	size_t n;
	if (lwordpos == rwordpos) {
	    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask) | ((value << rbitpos) & mask);
	} else if (slice_w <= BASESIZE) {
	    mask = UMASKS(lbitpos + 1);
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask)
		| ((value >> (slice_w - lbitpos - 1)) & mask);
	    mask = UMASKS(rbitpos);
	    vdata[rwordpos] =
		(vdata[rwordpos] & mask) | ((value << rbitpos) & ~mask);
	} else if (rbitpos == 0) {
	    vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
	    for (n = lwordpos + 1; n < rwordpos; n++)
		vdata[n] = 0;
	    vdata[rwordpos] = value;
	} else {
	    if (lbitpos == 0)
		vdata[lwordpos] = 0;
	    else
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
	    if (lwordpos + 1 < rwordpos) {
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = 0;
		vdata[rwordpos - 1] = (value >> (BASESIZE - rbitpos));
	    }
	    vdata[rwordpos] = (vdata[rwordpos] & UMASKS(rbitpos))
		| (value << rbitpos);
	}
	if (v.isSigned())
	    vdata[0] = SMASK(vdata[0],v.longData->remainder);
    }
}

void Slice::set(basevar &v,const int left,const int right,const SVARTYPE value)
{
    if (v.width() <= BASESIZE) {
	UVARTYPE    mask = (UMASKS(left + 1) & ~UMASKS(right));
	v.assign((v.udata & ~mask) | ((value << right) & mask));
    } else {
	size_t slice_w = left - right + 1;
	size_t lwordpos = v.longData->length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = v.longData->length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = v.longData->data;
	UVARTYPE mask;
	size_t n;
	if (lwordpos == rwordpos) {
	    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask) | ((value << rbitpos) & mask);
	} else if (slice_w <= BASESIZE) {
	    mask = UMASKS(lbitpos + 1);
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask)
		| ((value >> (slice_w - lbitpos - 1)) & mask);
	    mask = UMASKS(rbitpos);
	    vdata[rwordpos] =
		(vdata[rwordpos] & mask) | ((value << rbitpos) & ~mask);
	} else if (rbitpos == 0) {
	    if (value < 0) {
		vdata[lwordpos] |= UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos; n++)
		    vdata[n] = ~UVARTYPE(0);
	    } else {
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos; n++)
		    vdata[n] = 0;
	    }
	    vdata[rwordpos] = value;
	} else {
	    if (value < 0) {
		vdata[lwordpos] |= UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = ~UVARTYPE(0);
	    } else {
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = 0;
	    }
	    vdata[rwordpos - 1] =
		(vdata[rwordpos - 1] & ~UMASKS(rbitpos))
		| (value >> (BASESIZE - rbitpos));
	    vdata[rwordpos] = (value << rbitpos);
	}
	if (v.isSigned())
	    vdata[0] = SMASK(vdata[0],v.longData->remainder);
	else
	    vdata[0] = vdata[0] & UMASKS(v.longData->remainder);
    }
}

#if 0
void Slice::set(basevar &v,const int left,const int right,const basevar &value)
{
    size_t slice_w = left - right + 1;
    if (value.width() <= BASESIZE) {
	if (value.isSigned())
	    set(v,left,right,value.sdata);
	else
	    set(v,left,right,value.udata);
    } else if (slice_w <= BASESIZE) {
	set(v,left,right,value.longData->data[value.longData->length - 1]);
    } else {
	size_t lwordpos = v.longData->length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = v.longData->length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = v.longData->data;
	UVARTYPE *valuedata = value.longData->data;
	UVARTYPE mask;
	size_t n, m;
	if (slice_w <= value.width()) {
	    if (rbitpos == 0) {
		for (n = value.longData->length - 1; rwordpos != lwordpos;
		     --n, --rwordpos)
		    vdata[rwordpos] = valuedata[n];
		mask = UMASKS(lbitpos + 1);
		vdata[lwordpos] = 
		    (vdata[lwordpos] & ~mask) | (valuedata[n] & mask);
	    } else {
		mask = UMASKS(rbitpos);
		m = rwordpos;
		for (n = value.longData->length - 1;
		     m > lwordpos + 1; --n) {
		    vdata[m] =
			(vdata[rwordpos] & mask) | (valuedata[n] << rbitpos);
		    --m;
		    vdata[m] =
			(vdata[m] & ~mask)
			| (valuedata[n] >> (BASESIZE - rbitpos));
		}
		vdata[m] =
		    (vdata[m] & mask) | (valuedata[n] << rbitpos);
		--m;
		if (lbitpos < rbitpos) { //3.92 "<=" -> "<"
		    mask = UMASKS(lbitpos + 1);
		    vdata[lwordpos] =
			(vdata[lwordpos] & ~mask)
			| ((valuedata[n] >> (BASESIZE - rbitpos)) & mask);
		} else if (lwordpos == rwordpos) {
		    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
		    vdata[lwordpos] =
			(vdata[lwordpos] & ~mask)
			| (((valuedata[n] >> (BASESIZE - rbitpos))
			    | (valuedata[n - 1] << rbitpos)) & mask);
		} else if (BASESIZE - rbitpos <= lbitpos || n > 0) {
		    mask = UMASKS(lbitpos + 1);
		    vdata[lwordpos] = (vdata[lwordpos] & ~mask)
			| (valuedata[n] >> (BASESIZE - rbitpos))
			| ((valuedata[n - 1] << rbitpos) & mask);
		} else {
		    mask = UMASKS(lbitpos + 1);
		    vdata[lwordpos] = (vdata[lwordpos] & ~mask)
			| ((valuedata[n] >> (BASESIZE - rbitpos)) & mask);
		}
	    }
	} else if (rbitpos == 0) {
	    m = rwordpos - value.longData->length;
	    mask = UMASKS(lbitpos + 1);
	    n = 0;
	    if (m == lwordpos) {
		vdata[m] = (vdata[m] & ~mask) | (valuedata[0] & mask);
		n = 1;
		++m;
	    } else {
		if (value.isSigned() && (valuedata[0] & SIGNBIT)) {
		    vdata[lwordpos] |= mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = ~UVARTYPE(0);
		} else {
		    vdata[lwordpos] &= ~mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = 0;
		}
		n = 0;
	    }
	    for ( ; n < value.longData->length; ++n, ++m)
		vdata[m] = valuedata[n];
	} else {
	    m = rwordpos - value.longData->length;
	    mask = UMASKS(lbitpos + 1);
	    n = 0;
	    if (m == lwordpos) {
		vdata[m] = (vdata[m] & ~mask)
		    | ((valuedata[0] << rbitpos) & mask);
		n = 1;
		++m;
	    } else {
		if (value.isSigned() && (valuedata[0] & SIGNBIT)) {
		    vdata[lwordpos] |= mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = ~UVARTYPE(0);
		} else {
		    vdata[lwordpos] &= ~mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = 0;
		}
		n = 0;
	    }
	    for ( ; n < value.longData->length - 1; ++n, ++m) {
		vdata[m] =
		    (valuedata[n] << rbitpos)
		    | (valuedata[n + 1] >> (BASESIZE - rbitpos));
	    }
	    vdata[m] =
		(valuedata[n] << rbitpos) | (vdata[m] & UMASKS(rbitpos));
	}
	if (v.isSigned())
	    vdata[0] = SMASK(vdata[0],v.longData->remainder);
	else
	    vdata[0] &= UMASKS(v.longData->remainder);
    }
}
#else
void Slice::set(basevar &v,const int left,const int right,const basevar &value)
{
    size_t slice_w = left - right + 1;
    if (slice_w != value.width()) {
	// 幅が合わなければ合わせてからセット。
	Slice::set(v,left,right,value.expand(slice_w));
    } else if (slice_w <= BASESIZE) {
	if (value.isSigned())
	    set(v,left,right,value.sdata);
	else
	    set(v,left,right,value.udata);
    } else {
	size_t lwordpos = v.longData->length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = v.longData->length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = v.longData->data;
	UVARTYPE *valuedata = value.longData->data;
	UVARTYPE mask;
	size_t n, m;
	m = value.longData->length - 1;
	if (rbitpos == 0) {
	    // 右端が揃っているので、左端を除いてはデッドコピー。
	    for (n = rwordpos; n > lwordpos; --n, --m) {
		vdata[n] = valuedata[m];
	    }
	    mask = UMASKS(lbitpos + 1);
	    vdata[n] = (vdata[n] & ~mask) | (valuedata[m] & mask);
	} else {
	    // 揃っていないので、ずらしながらコピー。
	    mask = UMASKS(rbitpos);
	    n = rwordpos;
	    vdata[n] = ((vdata[n] & mask) | (valuedata[m] << rbitpos));
	    while (--n > lwordpos) {
		vdata[n] = ((valuedata[m - 1] << rbitpos)
			    | (valuedata[m] >> (BASESIZE - rbitpos)));
		--m;
	    }
	    mask = UMASKS(lbitpos + 1);
	    if (m > 0) {
		vdata[n] = ((vdata[n] & ~mask)
			    | (((valuedata[m - 1] << rbitpos)
				| (valuedata[m] >> (BASESIZE - rbitpos)))
			       & mask));
	    } else {
		vdata[n] = ((vdata[n] & ~mask)
			    | ((valuedata[m] >> (BASESIZE - rbitpos))
			       & mask));
	    }
	}
	if (v.isSigned())
	    vdata[0] = SMASK(vdata[0],v.longData->remainder);
	else
	    vdata[0] &= UMASKS(v.longData->remainder);
    }
}
#endif

#endif // !VAR32

#ifndef VAR32
const basevar Slice::longValue(const basevar &v,const int left,const int right)
{
    size_t w = left - right + 1;
    size_t lwordpos = v.longData->length - wordSize(left + 1);
    //size_t lbitpos  = remainBit(left);
    size_t rwordpos = v.longData->length - wordSize(right + 1);
    size_t rbitpos  = remainBit(right);
    UVARTYPE *vdata = v.longData->data;
    UVARTYPE d;
    if (w <= BASESIZE) {
		if (lwordpos == rwordpos)
		    d = vdata[lwordpos] >> rbitpos;
		else
		    d = (vdata[lwordpos] << (BASESIZE - rbitpos)) | (vdata[rwordpos] >> rbitpos);
			//return basevar(w,v.isSigned(),d);
		return basevar(w,false,d);
	}
    size_t s = wordSize(w);
    size_t r = remainBit(w);
    LongData *result = LongData::allocateBuffer(s);
    result->remainder = Remainder(r);
    UVARTYPE *p = result->data;
    if (rbitpos == 0) {
		*p = vdata[lwordpos];
		if (r != 0)
		    *p &= UMASKS(r);
		p++;
		while (++lwordpos <= rwordpos) {
		    *p++ = vdata[lwordpos];
		}
    } else {
#if 0 // Rev. 4.024
		size_t ll = Remainder(left); // Rev. 4.022
		if (ll >= result->remainder) { // Rev. 4.023
#else // Rev. 4.024
		size_t ll = remainBit(left) + 1;
		if (ll > rbitpos) {
#endif // Rev. 4.024
		    // 最初の 1word で足りている場合
		    *p = vdata[lwordpos] >> rbitpos;
		} else {
		    // 最初の 1word では足りない場合
		    *p = (vdata[lwordpos] << (BASESIZE - rbitpos))
			| (vdata[lwordpos + 1] >> rbitpos);
		    ++lwordpos;
		}
#if 0 // Rev. 4.024
		*p++ &= UMASKS(r);
#else // Rev. 4.024
		*p++ &= UMASKS(result->remainder);
#endif // Rev. 4.024
		while (--s) {
		    *p++ = (vdata[lwordpos] << (BASESIZE - rbitpos))
			| (vdata[lwordpos + 1] >> rbitpos);
		    ++lwordpos;
		}
    }
    return basevar(w,false,result);
}
#endif // !VAR32


void Slice::assign(const basevar &v)
{
    switch (type) {
      case E_VAR:
	set(*entity,left,right,v);
	break;
      case E_REG:
	set(*ereg.next,left,right,v);
	break;
      case E_MEM:
	emem.mem->sliceAssign(emem.n,left,right,v);
	break;
      default:
	VARASSERT(false);
    }
}

void Slice::assign(const UVARTYPE v)
{
    switch (type) {
      case E_VAR:
	set(*entity,left,right,v);
	break;
      case E_REG:
	set(*ereg.next,left,right,v);
	break;
      case E_MEM:
	emem.mem->sliceAssign(emem.n,left,right,v);
	break;
      default:
	VARASSERT(false);
    }
}

void Slice::assign(const SVARTYPE v)
{
    switch (type) {
      case E_VAR:
	set(*entity,left,right,v);
	break;
      case E_REG:
	set(*ereg.next,left,right,v);
	break;
      case E_MEM:
	emem.mem->sliceAssign(emem.n,left,right,v);
	break;
      default:
	VARASSERT(false);
    }
}


//
// concat
//

static const int ALLOC_SIZE = 16;
ConcatElement::Heap		ConcatElement::heap;


ConcatElement::Heap::~Heap()
{
#if 0
    VARASSERT(emptyList.size() == (size_t)allocatedSize);
    std::vector<ConcatElement *>::iterator it;
    for (it = allocatedList.begin(); it != allocatedList.end(); ++it)
	delete [] *it;
#else
    for (int n = 0; n < allocatedSize; ++n)
	free(allocatedList[n]);
    free(allocatedList);
    free(emptyList);
#endif
}

void ConcatElement::Heap::newArea()
{
#if 0
    ConcatElement *tmp = new ConcatElement[ALLOC_SIZE];
    allocatedList.push_back(tmp);
    allocatedSize += ALLOC_SIZE;
#else
    ConcatElement *tmp = (ConcatElement *)malloc(ALLOC_SIZE
						 * sizeof(ConcatElement));
    if (tmp == 0)
	throw AllocateError();
    ++allocatedSize;
    allocatedList = (ConcatElement **)realloc(allocatedList,
					      allocatedSize * sizeof(ConcatElement *));
    if (allocatedList == 0)
	throw AllocateError();
    allocatedList[allocatedSize - 1] = tmp;
#endif
#if 0
    emptyList.reserve(allocatedSize);
    for (int n = 0; n < ALLOC_SIZE; ++n) {
	tmp->type = E_NONE;
	tmp->refCount = 0;
	emptyList.push_back(tmp++);
    }
#else
    emptyList = (ConcatElement **)realloc(emptyList,allocatedSize *
					  ALLOC_SIZE * sizeof(ConcatElement *));
    if (emptyList == 0)
	throw AllocateError();
    for (int n = 0; n < ALLOC_SIZE; ++n) {
	emptyList[emptyLast++] = tmp++;
    }
#endif
}

#if 0
ConcatElement *ConcatElement::Heap::get()
{
#if 0
    if (emptyList.empty())
	newArea();
    ConcatElement *ret = emptyList.back();
    emptyList.pop_back();
    return ret;
#else
    if (emptyLast == 0)
	newArea();
    ConcatElement *ret = emptyList[--emptyLast];
    return ret;
#endif
}				
#endif

void ConcatElement::realfree()
{
    if (type == E_CONCAT) {
	econcat.left->dealloc(); econcat.right->dealloc();
    }
    heap.release(this);
}

void ConcatElement::init(basevar &v)
{
    refCount = 1;
    type = E_VAR;
    evar = &v;
    w = v.width();
}

void ConcatElement::init(Index v)
{
    refCount = 1;
    type = E_INDEX;
    switch (eindex.type = v.type) {
      case E_VAR:
	eindex.entity = v.entity;
	break;
      case E_REG:
	eindex.ereg.current = v.ereg.current;
	eindex.ereg.next    = v.ereg.next;
	break;
      case E_MEM:
	eindex.emem.mem = v.emem.mem;
	eindex.emem.n   = v.emem.n;
	break;
      default:
	VARASSERT(false);
    }
    eindex.pos = v.pos;
    w = 1;
}

void ConcatElement::init(Slice v)
{
    refCount = 1;
    type = E_SLICE;
    switch (eindex.type = v.type) {
      case E_VAR:
	eindex.entity = v.entity;
	break;
      case E_REG:
	eindex.ereg.current = v.ereg.current;
	eindex.ereg.next = v.ereg.next;
	break;
      case E_MEM:
	eindex.emem.mem = v.emem.mem;
	eindex.emem.n   = v.emem.n;
	break;
      default:
	VARASSERT(false);
    }
    eslice.left = v.left;
    eslice.right = v.right;
    w = v.width();
}

void ConcatElement::init(Concat v)
{
    refCount = 1;
    type = E_CONCAT;
    econcat.left = v.left;
    econcat.right = v.right;
    ++(*v.left);
    ++(*v.right);
    w = v.width();
}

void ConcatElement::init(uregop &v)
{
    refCount = 1;
    type = E_REG;
    ereg.current = &v.getCurrent();
    ereg.next = &v.getNext();
    w = v.width();
}

void ConcatElement::init(sregop &v)
{
    refCount = 1;
    type = E_REG;
    ereg.current = &v.getCurrent();
    ereg.next = &v.getNext();
    w = v.width();
}

void ConcatElement::init(MemElement v)
{
    refCount = 1;
    type = E_MEM;
    emem.mem = &v.memory;
    emem.n   = v.n;
    w = v.width();
}

ConcatElement::operator const basevar () const
{
    switch (type) {
      case E_VAR:
	return *evar;
      case E_INDEX:
	switch (eindex.type) {
	  case E_VAR:
	    return basevar(1,false,
			   (UVARTYPE)Index::value(*eindex.entity,eindex.pos));
	  case E_REG:
	    return basevar(1,false,
			   (UVARTYPE)Index::value(*eindex.ereg.current,eindex.pos));
	  case E_MEM:
	    return basevar(1,false,
			   (UVARTYPE)eindex.emem.mem->indexValue(eindex.emem.n,eindex.pos));
	  default:
	    VARASSERT(false);
	    return basevar(1,false,UVARTYPE(0)); // dummy.
	}
	break;
      case E_SLICE:
	switch (eindex.type) {
	  case E_VAR:
	    return Slice::value(*eslice.entity,eslice.left,eslice.right);
	  case E_REG:
	    return Slice::value(*eslice.ereg.current,eslice.left,eslice.right);
	  case E_MEM:
	    return eslice.emem.mem->sliceValue(eslice.emem.n,eslice.left,eslice.right);
	  default:
	    VARASSERT(false);
	    return basevar(1,false,UVARTYPE(0)); // dummy.
	}
	break;
      case E_CONCAT:
	return concat((const basevar)*econcat.left,econcat.left->width(),
		      (const basevar)*econcat.right,econcat.right->width());
      case E_REG:
	return *ereg.current;
      case E_MEM:
	return emem.mem->at(emem.n);
      default:
	VARASSERT(false);
	return basevar(1,false,UVARTYPE(0)); // dummy.
    }
}


void ConcatElement::assign(const UVARTYPE v)
{
    switch (type) {
      case E_VAR:
	evar->assign(v);
	break;
      case E_INDEX:
	switch (eindex.type) {
	  case E_VAR:
	    Index::set(*eindex.entity,eindex.pos,v & 1);
	    break;
	  case E_REG:
	    Index::set(*eindex.ereg.next,eindex.pos,v & 1);
	    break;
	  case E_MEM:
	    eindex.emem.mem->indexAssign(eindex.emem.n,eindex.pos,v & 1);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_SLICE:
	switch (eslice.type) {
	  case E_VAR:
	    Slice::set(*eslice.entity,eslice.left,eslice.right,v);
	    break;
	  case E_REG:
	    Slice::set(*eslice.ereg.next,eslice.left,eslice.right,v);
	    break;
	  case E_MEM:
	    eslice.emem.mem->sliceAssign(eslice.emem.n,
					 eslice.left,eslice.right,v);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_CONCAT:
	if (econcat.right->width() < BASESIZE)
	    econcat.left->assign(v >> econcat.right->width());
	else
	    econcat.left->assign(UVARTYPE(0));
	econcat.right->assign(v);
	break;
      case E_REG:
	ereg.next->assign(v);
	break;
      case E_MEM:
	emem.mem->assign(emem.n,v);
	break;
      default:
	VARASSERT(false);
    }
}


void ConcatElement::assign(const SVARTYPE v)
{
    switch (type) {
      case E_VAR:
	evar->assign(v);
	break;
      case E_INDEX:
	switch (eindex.type) {
	  case E_VAR:
	    Index::set(*eindex.entity,eindex.pos,v & 1);
	    break;
	  case E_REG:
	    Index::set(*eindex.ereg.next,eindex.pos,v & 1);
	    break;
	  case E_MEM:
	    eindex.emem.mem->indexAssign(eindex.emem.n,eindex.pos,v & 1);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_SLICE:
	switch (eslice.type) {
	  case E_VAR:
	    Slice::set(*eslice.entity,eslice.left,eslice.right,v);
	    break;
	  case E_REG:
	    Slice::set(*eslice.ereg.next,eslice.left,eslice.right,v);
	    break;
	  case E_MEM:
	    eslice.emem.mem->sliceAssign(eslice.emem.n,
					 eslice.left,eslice.right,v);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_CONCAT:
	if (econcat.right->width() < BASESIZE)
	    econcat.left->assign(v >> econcat.right->width());
	else if (v < 0)
	    econcat.left->assign(SVARTYPE(-1));
	else
	    econcat.left->assign(UVARTYPE(0));
	econcat.right->assign(v);
	break;
      case E_REG:
	ereg.next->assign(v);
	break;
      case E_MEM:
	emem.mem->assign(emem.n,v);
	break;
      default:
	VARASSERT(false);
    }
}


void ConcatElement::assign(const basevar &v)
{
#ifdef VAR32
    assign(v.udata);
#else // !VAR32
    switch (type) {
      case E_VAR:
	evar->assign(v);
	break;
      case E_INDEX:
	switch (eindex.type) {
	  case E_VAR:
	    Index::set(*eindex.entity,eindex.pos,(v & 1) != 0);
	    break;
	  case E_REG:
	    Index::set(*eindex.ereg.next,eindex.pos,(v & 1) != 0);
	    break;
	  case E_MEM:
	    eindex.emem.mem->indexAssign(eindex.emem.n,eindex.pos,
					 (v & 1) != 0);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_SLICE:
	switch (eslice.type) {
	  case E_VAR:
	    Slice::set(*eslice.entity,eslice.left,eslice.right,v);
	    break;
	  case E_REG:
	    Slice::set(*eslice.ereg.next,eslice.left,eslice.right,v);
	    break;
	  case E_MEM:
	    eslice.emem.mem->sliceAssign(eslice.emem.n,
					 eslice.left,eslice.right,v);
	    break;
	  default:
	    VARASSERT(false);
	}
	break;
      case E_CONCAT:
	econcat.left->assign(v >> econcat.right->width());
	econcat.right->assign(v);
	break;
      case E_REG:
	ereg.next->assign(v);
	break;
      case E_MEM:
	emem.mem->assign(emem.n,v);
	break;
      default:
	VARASSERT(false);
    }
#endif // VAR32
}


void Concat::assign(const UVARTYPE v)
{
    if (right->width() < BASESIZE)
	left->assign(v >> right->width());
    else
	left->assign(UVARTYPE(0));
    right->assign(v);
}


void Concat::assign(const SVARTYPE v)
{
    if (right->width() < BASESIZE)
	left->assign(v >> right->width());
    else if (v < 0)
	left->assign(SVARTYPE(-1));
    else
	left->assign(UVARTYPE(0));
    right->assign(v);
}


void Concat::assign(const basevar &v)
{
#ifdef VAR32
    if (v.s)
	assign(v.sdata);
    else
	assign(v.udata);
#else // !VAR32
    left->assign(v >> right->width());
    right->assign(v);
#endif // VAR32
}


#ifndef VAR32
const basevar longConcat(const basevar &left,const size_t lw,
			 const basevar &right,const size_t rw)
{
    size_t w = saturate_width(lw + rw);
    size_t s = wordSize(w);
    size_t total_r = remainBit(w);
    if (total_r == 0)
	total_r = BASESIZE;
    LongData *result = LongData::allocateBuffer(s);
    result->remainder = total_r;
    UVARTYPE *p = result->data;
    size_t r = remainBit(rw);
    size_t n;
    UVARTYPE *vdata;
    if (r == 0) {
	if (lw <= BASESIZE) {
	    *p++ = left.udata;
	    if (rw <= BASESIZE) {
		*p = right.udata;
	    } else {
		vdata = right.longData->data;
		for (n = 1; n < s; ++n)
		    *p++ = *vdata++;
	    }
	} else {
	    vdata = left.longData->data;
	    for (n = 0; n < left.longData->length; ++n)
		*p++ = *vdata++;
	    if (rw <= BASESIZE)
		*p = right.udata;
	    else {
		vdata = right.longData->data;
		for ( ; n < s; ++n)
		    *p++ = *vdata++;
	    }
	}
    } else if (lw <= BASESIZE) {
	if (rw <= BASESIZE) {
#if 0
	    if (left.s)
		*p++ = (left.sdata >> (BASESIZE - rw));
	    else
#endif
		*p++ = (left.udata >> (BASESIZE - rw));
	    *p = (left.udata << rw) | (right.udata & UMASKS(rw));
	} else {
	    vdata = right.longData->data;
	    if (lw < total_r) {
		*p++ = (left.udata << (total_r - lw)) | (*vdata++ & UMASKS(r));
		n = 1;
	    } else {
#if 0
		if (left.isSigned())
		    *p++ = left.sdata >> (lw - total_r);
		else
#endif
		    *p++ = left.udata >> (lw - total_r);
		*p++ = (left.udata << r)
		    | (*vdata++ & UMASKS(r));
		n = 2;
	    }
	    for ( ; n < s; n++)
		*p++ = *vdata++;
	}
    } else {
	size_t lshift = r;
	size_t rshift = BASESIZE - lshift;
	UVARTYPE d;
	vdata = left.longData->data;
	if (left.longData->remainder > total_r) {
#if 0
	    if (left.s)
		*p++ = SMASK(vdata[0] >> rshift,total_r);
	    else
		*p++ = (vdata[0] >> rshift) & UMASKS(total_r);
#else
	    *p++ = (vdata[0] >> rshift);
#endif
	}
	for (n = 1; n < left.longData->length; ++n) {
	    *p++ = (vdata[n - 1] << lshift) | (vdata[n] >> rshift);
	}
	if (rw <= BASESIZE) {
	    *p = (vdata[n - 1] << lshift) | (right.udata & UMASKS(rw));
	} else {
	    d = (vdata[n - 1] << lshift);
	    vdata = right.longData->data;
	    *p++ = d | (*vdata++ & UMASKS(r));
	    for (n = 1; n < right.longData->length; ++n)
		*p++ = *vdata++;
	}
    }
    result->data[0] &= UMASKS(total_r);
    return basevar(w,false,result);
}
#endif // !VAR32


//
// basemem
//

basemem::basemem(const bool _b,const int _s,const int _e,const int _n,
		 const char *_name)
    : size(_n), s(_b), start(_s), end(_e)
{
    if (start < end)
	w = end - start + 1;
    else
	w = start - end + 1;
#ifdef VAR32
    VARASSERT(w <= BASESIZE);
#endif // VAR32
    if (_name == 0)
	name = 0;
    else {
	name = new char[strlen(_name) + 1];
	strcpy(name,_name);
    }
    changeNum = 0;
    changeList = new int[size];
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	if (s) {
	    current.sdata = new SVARTYPE[size];
	    next.sdata    = new SVARTYPE[size];
	} else {
	    current.udata = new UVARTYPE[size];
	    next.udata    = new UVARTYPE[size];
	}
#ifndef VAR32
    } else {
	current.longData.remainder = next.longData.remainder = Remainder(w);
	size_t word_size = wordSize(w);
	current.longData.length = next.longData.length = word_size;
	current.longData.data   = new UVARTYPE[word_size * size];
	next.longData.data      = new UVARTYPE[word_size * size];
    }
#endif // !VAR32
}

basemem::~basemem()
{
    delete [] name;
    delete [] changeList;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	delete [] current.udata;
	delete [] next.udata;
#ifndef VAR32
    } else {
	delete [] current.longData.data;
	delete [] next.longData.data;
    }
#endif // !VAR32
}

const basevar basemem::at(const int n) const
{
    if (!(0 <= n && (size_t)n < size))
	return basevar(w,s,UVARTYPE(0));
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	return basevar(w,s,current.udata[n]);
#ifndef VAR32
    } else {
	size_t word_size = current.longData.length;
	LongData *p = LongData::allocateBuffer(word_size);
	p->remainder = current.longData.remainder;
	memcpy(p->data,&current.longData.data[word_size * n],
	       word_size * sizeof(UVARTYPE));
	return basevar(w,s,p);
    }
#endif // !VAR32
}
	
const basevar basemem::nextAt(const int n) const
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	return basevar(w,s,next.udata[n]);
#ifndef VAR32
    } else {
	size_t word_size = next.longData.length;
	LongData *p = LongData::allocateBuffer(word_size);
	p->remainder = next.longData.remainder;
	memcpy(p->data,&next.longData.data[word_size * n],
	       word_size * sizeof(UVARTYPE));
	return basevar(w,s,p);
    }
#endif // !VAR32
}

int basemem::range_check(const int n) const
{
    //if (!(0 <= n && (size_t)n < size)) {
	//printf("%d is out of range at memory(size = %u).\n",n,size);
	//printf(" Core file will be dumped. See ClassMate manuals.\n");
	//VARASSERT(0 <= n && (size_t)n < size);
    //}
    if (!(0 <= n && (size_t)n < size)) {
#ifdef VAR_NO_MemoryRangeErrorEXCEPTION
#ifndef CmCLASSMATE
    	VARASSERTMSG(false,Out of range at memory);
#endif // CmCLASSMATE
	    if (0 > n)	return 0;
	    if ((size_t)n >= size) return(n%size);
#else // ! VAR_NO_MemoryRangeErrorEXCEPTION
		throw MemoryRangeError(*this,n);
#endif // VAR_NO_MemoryRangeErrorEXCEPTION
    }
    return n;
}

void basemem::set(const int n,const UVARTYPE v)
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	if (s)
	    next.sdata[n] = SMASK(v,width());
	else
	    next.udata[n] = v & UMASKS(width());
#ifndef VAR32
    } else {
	size_t word_size = next.longData.length;
	UVARTYPE *data = &next.longData.data[word_size * n];
	size_t i;
	for (i = 0; i < next.longData.length - 1; ++i)
	    *data++ = 0;
	*data = v;
    }
#endif // !VAR32
}

void basemem::set(const int n,const SVARTYPE v)
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	if (s)
	    next.sdata[n] = SMASK(v,width());
	else
	    next.udata[n] = v & UMASKS(width());
#ifndef VAR32
    } else {
	size_t word_size = next.longData.length;
	UVARTYPE *data = &next.longData.data[word_size * n];
	size_t i;
	if (v < 0) {
	    if (s)
		*data++ = ~UVARTYPE(0);
	    else
		*data++ = (~UVARTYPE(0) & UMASKS(next.longData.remainder));
	    for (i = 1; i < next.longData.length - 1; ++i)
		*data++ = ~UVARTYPE(0);
	} else {
	    for (i = 0; i < next.longData.length - 1; ++i)
		*data++ = 0;
	}
	*data = v;
    }
#endif // !VAR32
}

void basemem::set(const int n,const basevar &v)
{
#ifndef VAR32
    if (v.width() <= BASESIZE) {
#endif // !VAR32
	if (v.isSigned())
	    set(n,v.sdata);
	else
	    set(n,v.udata);
#ifndef VAR32
    } else if (w <= BASESIZE) {
	assign(n,v.longData->data[v.longData->length - 1]);
    } else {
	size_t i;
	size_t word_size = next.longData.length;
	UVARTYPE *data = &next.longData.data[word_size * n];
	if (v.width() < width()) {
	    if (v.isSigned() && (v.longData->data[0] & SIGNBIT)) {
		for (i = 0; i < word_size - v.longData->length; ++i)
		    *data++ = ~UVARTYPE(0);
	    } else {
		for (i = 0; i < word_size - v.longData->length; ++i)
		    *data++ = 0;
	    }
	    for (i = 0; i < v.longData->length; ++i)
		*data++ = v.longData->data[i];
	} else {
	    UVARTYPE *d0 = data;
	    for (i = v.longData->length - word_size; i < v.longData->length; ++i)
		*data++ = v.longData->data[i];
	    if (s)
		*d0 = SMASK(*d0,next.longData.remainder);
	    else
		*d0 &= UMASKS(next.longData.remainder);
	}
    }
#endif // !VAR32
}

void basemem::update(const int n)
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	current.udata[n] = next.udata[n];
#ifndef VAR32
    } else {
	size_t word_size = current.longData.length;
	size_t adr = n * word_size;
	memcpy(&current.longData.data[adr],&next.longData.data[adr],
	       word_size * sizeof(UVARTYPE));
    }
#endif // !VAR32
}

void basemem::indexAssign(const int n,const int pos,const bool b)
{
    change(n);
#ifndef VAR32
    if (width() <= BASESIZE) {
#endif // !VAR32
	if (s) {
	    SVARTYPE *p = &next.sdata[n];
	    *p = SMASK(b ? (*p | (UVARTYPE(1) << pos))
		       : (*p & ~(UVARTYPE(1) << pos)),width());
	} else {
	    UVARTYPE *p = &next.udata[n];
	    *p = b ? (*p | (UVARTYPE(1) << pos))
		: (*p & ~(UVARTYPE(1) << pos));
	}
#ifndef VAR32
    } else {
	size_t wordpos = next.longData.length - wordSize(pos + 1);
	size_t bitpos = remainBit(pos);
	UVARTYPE *data = &next.longData.data[next.longData.length * n];
	if (s && wordpos == 0
	    && bitpos == next.longData.remainder && b) {
	    // set MSB.
	    data[0] |= ~UMASKS(bitpos - 1);
	} else if (b) {
	    data[wordpos] |= (UVARTYPE(1) << bitpos);
	} else {
	    data[wordpos] &= ~(UVARTYPE(1) << bitpos);
	}
    }
#endif // !VAR32
}

void basemem::sliceAssign(const int n,const int left,const int right,
			  const UVARTYPE value)
{
    change(n);
#ifndef VAR32
    if (width() <= BASESIZE) {
#endif // !VAR32
	UVARTYPE    mask = (UMASKS(left + 1) & ~UMASKS(right));
	if (s) {
	    SVARTYPE *p = &next.sdata[n];
	    *p = SMASK((*p & ~mask) | ((value << right) & mask),width());
	} else {
	    UVARTYPE *p = &next.udata[n];
	    *p = (*p & ~mask) | ((value << right) & mask);
	}
#ifndef VAR32
    } else {
	size_t slice_w = left - right + 1;
	size_t lwordpos = next.longData.length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = next.longData.length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = &next.longData.data[next.longData.length * n];
	UVARTYPE mask;
	size_t n;
	if (lwordpos == rwordpos) {
	    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask) | ((value << rbitpos) & mask);
	} else if (slice_w <= BASESIZE) {
	    mask = UMASKS(lbitpos + 1);
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask)
		| ((value >> (slice_w - lbitpos - 1)) & mask);
	    mask = UMASKS(rbitpos);
	    vdata[rwordpos] =
		(vdata[rwordpos] & mask) | ((value << rbitpos) & ~mask);
	} else if (rbitpos == 0) {
	    vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
	    for (n = lwordpos + 1; n < rwordpos; n++)
		vdata[n] = 0;
	    vdata[rwordpos] = value;
	} else {
#if 0
	    vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
	    for (n = lwordpos + 1; n < rwordpos - 1; n++)
		vdata[n] = 0;
	    vdata[rwordpos - 1] =
		(vdata[rwordpos - 1] & ~UMASKS(rbitpos))
		| (value >> (BASESIZE - rbitpos));
	    vdata[rwordpos] = (value << rbitpos);
#else
	    if (lbitpos == 0)
		vdata[lwordpos] = 0;
	    else
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
	    if (lwordpos + 1 < rwordpos) {
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = 0;
		vdata[rwordpos - 1] = (value >> (BASESIZE - rbitpos));
	    }
	    vdata[rwordpos] = (vdata[rwordpos] & UMASKS(rbitpos))
		| (value << rbitpos);
#endif
	}
	if (s)
	    vdata[0] = SMASK(vdata[0],next.longData.remainder);
    }
#endif // !VAR32
}

void basemem::sliceAssign(const int n,const int left,const int right,
			  const SVARTYPE value)
{
    change(n);
#ifndef VAR32
    if (width() <= BASESIZE) {
#endif // !VAR32
	UVARTYPE    mask = (UMASKS(left + 1) & ~UMASKS(right));
	if (s) {
	    SVARTYPE *p = &next.sdata[n];
	    *p = SMASK((*p & ~mask) | ((value << right) & mask),width());
	} else {
	    UVARTYPE *p = &next.udata[n];
	    *p = ((*p & ~mask) | ((value << right) & mask));
	}
#ifndef VAR32
    } else {
	size_t slice_w = left - right + 1;
	size_t lwordpos = next.longData.length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = next.longData.length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = &next.longData.data[next.longData.length * n];
	UVARTYPE mask;
	size_t n;
	if (lwordpos == rwordpos) {
	    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask) | ((value << rbitpos) & mask);
	} else if (slice_w <= BASESIZE) {
	    mask = UMASKS(lbitpos + 1);
	    vdata[lwordpos] =
		(vdata[lwordpos] & ~mask)
		| ((value >> (slice_w - lbitpos - 1)) & mask);
	    mask = UMASKS(rbitpos);
	    vdata[rwordpos] =
		(vdata[rwordpos] & mask) | ((value << rbitpos) & ~mask);
	} else if (rbitpos == 0) {
	    if (value < 0) {
		vdata[lwordpos] |= UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos; n++)
		    vdata[n] = ~UVARTYPE(0);
	    } else {
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos; n++)
		    vdata[n] = 0;
	    }
	    vdata[rwordpos] = value;
	} else {
	    if (value < 0) {
		vdata[lwordpos] |= UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = ~UVARTYPE(0);
	    } else {
		vdata[lwordpos] &= ~UMASKS(lbitpos + 1);
		for (n = lwordpos + 1; n < rwordpos - 1; n++)
		    vdata[n] = 0;
	    }
	    vdata[rwordpos - 1] =
		(vdata[rwordpos - 1] & ~UMASKS(rbitpos))
		| (value >> (BASESIZE - rbitpos));
	    vdata[rwordpos] = (value << rbitpos);
	}
	if (s)
	    vdata[0] = SMASK(vdata[0],next.longData.remainder);
	else
	    vdata[0] &= UMASKS(next.longData.remainder);
    }
#endif // !VAR32
}

void basemem::sliceAssign(const int n,const int left,const int right,
			  const basevar &value)
{
#ifdef VAR32
    if (value.isSigned())
	sliceAssign(n,left,right,value.sdata);
    else
	sliceAssign(n,left,right,value.udata);
#else // !VAR32
#if 0
    size_t slice_w = left - right + 1;
    if (value.width() <= BASESIZE) {
	if (value.isSigned())
	    sliceAssign(n,left,right,value.sdata);
	else
	    sliceAssign(n,left,right,value.udata);
    } else if (slice_w <= BASESIZE) {
	sliceAssign(n,left,right,
		    value.longData->data[value.longData->length - 1]);
    } else {
	change(n);
	size_t lwordpos = next.longData.length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = next.longData.length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = &next.longData.data[next.longData.length * n];
	UVARTYPE *valuedata = value.longData->data;
	UVARTYPE mask;
	size_t n, m;
	if (slice_w <= value.width()) {
	    if (rbitpos == 0) {
		for (n = value.longData->length - 1; rwordpos != lwordpos;
		     --n, --rwordpos)
		    vdata[rwordpos] = valuedata[n];
		mask = UMASKS(lbitpos + 1);
		vdata[lwordpos] = 
		    (vdata[lwordpos] & ~mask) | (valuedata[n] & mask);
	    } else {
		mask = UMASKS(rbitpos);
		for (n = value.longData->length - 1;
		     rwordpos > lwordpos + 1; --n) {
		    vdata[rwordpos] =
			(vdata[rwordpos] & mask) | (valuedata[n] << rbitpos);
		    --rwordpos;
		    vdata[rwordpos] =
			(vdata[rwordpos] & ~mask)
			| (valuedata[n] >> (BASESIZE - rbitpos));
		}
		vdata[rwordpos] =
		    (vdata[rwordpos] & mask) | (valuedata[n] << rbitpos);
		--rwordpos;
		if (lbitpos <= rbitpos) {
		    mask = UMASKS(lbitpos + 1);
		    vdata[lwordpos] =
			(vdata[lwordpos] & ~mask)
			| ((valuedata[n] >> (BASESIZE - rbitpos)) & mask);
		} else {
		    mask = (UMASKS(lbitpos + 1) & ~UMASKS(rbitpos));
		    vdata[lwordpos] =
			(vdata[lwordpos] & ~mask)
			| (((valuedata[n] >> (BASESIZE - rbitpos))
			    | (valuedata[n - 1] << rbitpos)) & mask);
		}
	    }
	} else if (rbitpos == 0) {
	    m = rwordpos - value.longData->length;
	    mask = UMASKS(lbitpos + 1);
	    n = 0;
	    if (m == lwordpos) {
		vdata[m] = (vdata[m] & ~mask) | (valuedata[0] & mask);
		n = 1;
		++m;
	    } else {
		if (value.isSigned() && (valuedata[0] & SIGNBIT)) {
		    vdata[lwordpos] |= mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = ~UVARTYPE(0);
		} else {
		    vdata[lwordpos] &= ~mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = 0;
		}
		n = 0;
	    }
	    for ( ; n < value.longData->length; ++n, ++m)
		vdata[m] = valuedata[n];
	} else {
	    m = rwordpos - value.longData->length;
	    mask = UMASKS(lbitpos + 1);
	    n = 0;
	    if (m == lwordpos) {
		vdata[m] = (vdata[m] & ~mask)
		    | ((valuedata[0] << rbitpos) & mask);
		n = 1;
		++m;
	    } else {
		if (value.isSigned() && (valuedata[0] & SIGNBIT)) {
		    vdata[lwordpos] |= mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = ~UVARTYPE(0);
		} else {
		    vdata[lwordpos] &= ~mask;
		    for (n = lwordpos + 1; n < m; n++)
			vdata[n] = 0;
		}
		n = 0;
	    }
	    for ( ; n < value.longData->length - 1; ++n, ++m) {
		vdata[m] =
		    (valuedata[n] << rbitpos)
		    | (valuedata[n + 1] >> (BASESIZE - rbitpos));
	    }
	    vdata[m] =
		(valuedata[n] << rbitpos) | (vdata[m] & UMASKS(rbitpos));
	}
	if (s)
	    vdata[0] = SMASK(vdata[0],next.longData.remainder);
	else
	    vdata[0] &= UMASKS(next.longData.remainder);
    }
#else
    size_t slice_w = left - right + 1;
    if (slice_w != value.width()) {
	// 幅が合わなければ合わせてからセット。
	sliceAssign(n,left,right,value.expand(slice_w));
    } else if (slice_w <= BASESIZE) {
	if (value.isSigned())
	    sliceAssign(n,left,right,value.sdata);
	else
	    sliceAssign(n,left,right,value.udata);
    } else {
	change(n);
	size_t lwordpos = next.longData.length - wordSize(left + 1);
	size_t lbitpos  = remainBit(left);
	size_t rwordpos = next.longData.length - wordSize(right + 1);
	size_t rbitpos  = remainBit(right);
	UVARTYPE *vdata = &next.longData.data[next.longData.length * n];
	UVARTYPE *valuedata = value.longData->data;
	UVARTYPE mask;
	size_t n, m;
	m = value.longData->length - 1;
	if (rbitpos == 0) {
	    // 右端が揃っているので、左端を除いてはデッドコピー。
	    for (n = rwordpos; n > lwordpos; --n, --m) {
		vdata[n] = valuedata[m];
	    }
	    mask = UMASKS(lbitpos + 1);
	    vdata[n] = (vdata[n] & ~mask) | (valuedata[m] & mask);
	} else {
	    // 揃っていないので、ずらしながらコピー。
	    mask = UMASKS(rbitpos);
	    n = rwordpos;
	    vdata[n] = ((vdata[n] & mask) | (valuedata[m] << rbitpos));
	    while (--n > lwordpos) {
		vdata[n] = ((valuedata[m - 1] << rbitpos)
			    | (valuedata[m] >> (BASESIZE - rbitpos)));
		--m;
	    }
	    mask = UMASKS(lbitpos + 1);
	    if (m > 0) {
		vdata[n] = ((vdata[n] & ~mask)
			    | (((valuedata[m - 1] << rbitpos)
				| (valuedata[m] >> (BASESIZE - rbitpos)))
			       & mask));
	    } else {
		vdata[n] = ((vdata[n] & ~mask)
			    | ((valuedata[m] >> (BASESIZE - rbitpos))
			       & mask));
	    }
	}
	if (s)
	    vdata[0] = SMASK(vdata[0],next.longData.remainder);
	else
	    vdata[0] &= UMASKS(next.longData.remainder);
    }
#endif
#endif // VAR32
}

void basemem::copyAll()
{
    changeNum = 0;
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	UVARTYPE *p = next.udata;
	UVARTYPE value = *p++;
	for (size_t n = 1; n < size; ++n)
	    *p++ = value;
	memcpy(current.udata,next.udata,size * sizeof(UVARTYPE));
#ifndef VAR32
    } else {
	size_t word_size = next.longData.length;
	UVARTYPE *src = next.longData.data;
	UVARTYPE *dst = src + word_size;
	for (size_t n = 1; n < size; ++n) {
	    memcpy(dst,src,word_size * sizeof(UVARTYPE));
	    dst += word_size;
	}
	memcpy(current.longData.data,next.longData.data,
	       size * word_size * sizeof(UVARTYPE));
    }
#endif // !VAR32
}

void basemem::update()
{
    if (changeNum < (size >> 2)) {
#ifndef VAR32
	if (w <= BASESIZE) {
#endif // !VAR32
	    for (size_t n = 0; n < changeNum; ++n) {
		int num = changeList[n];
		current.udata[num] = next.udata[num];
	    }
#ifndef VAR32
	} else {
	    size_t word_size = current.longData.length;
	    for (size_t n = 0; n < changeNum; ++n) {
		int num = changeList[n];
		size_t adr = num * word_size;
		memcpy(&current.longData.data[adr],&next.longData.data[adr],
		       word_size * sizeof(UVARTYPE));
	    }
	}
#endif // !VAR32
    } else {
#ifndef VAR32
	if (w <= BASESIZE) {
#endif // !VAR32
	    memcpy(current.udata,next.udata,size * sizeof(UVARTYPE));
#ifndef VAR32
	} else {
	    memcpy(current.longData.data,next.longData.data,
		   size * next.longData.length * sizeof(UVARTYPE));
	}
#endif // !VAR32
    }
    changeNum = 0;
}

void basemem::revert()
{
#ifndef VAR32
    if (w <= BASESIZE) {
#endif // !VAR32
	for (size_t n = 0; n < changeNum; ++n) {
	    int num = changeList[n];
	    next.udata[num] = current.udata[num];
	}
#ifndef VAR32
    } else {
	size_t word_size = current.longData.length;
	for (size_t n = 0; n < changeNum; ++n) {
	    int num = changeList[n];
	    size_t adr = num * word_size;
	    next.longData.data[adr] = current.longData.data[adr];
	}
    }
#endif // !VAR32
    changeNum = 0;
}

} // namespace cyber

// COM_SIG *****************************************************
// COM_SIG *
// COM_SIG *   ClassMate  Ver 2.20  release  2005/03/31  
// COM_SIG *     FileName var.cpp LineCount 2985
// COM_SIG *
// COM_SIG *****************************************************
