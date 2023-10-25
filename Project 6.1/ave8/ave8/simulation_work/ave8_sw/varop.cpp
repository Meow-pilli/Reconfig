/*
 * varop.cpp
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
// op2
//
#include "var.h"

namespace cyber {

#ifdef VAR32
int compare(const basevar &a,const size_t /*aw*/,
	    const basevar &b,const size_t /*bw*/) {
#else // !VAR32
int compare(const basevar &a,const size_t aw,
	    const basevar &b,const size_t bw) {
    if (aw <= BASESIZE && bw <= BASESIZE) {
#endif // !VAR32
	if (a.s) {
	    if (b.s) {
		if (a.sdata < b.sdata)
		    return -1;
		else if (a.sdata > b.sdata)
		    return 1;
		else
		    return 0;
	    } else if (a.sdata < 0) {
		return -1;
	    }
	} else if (b.s) {
	    if (b.sdata < 0)
		return 1;
	}
	if (a.udata < b.udata) {
	    return -1;
	} else if (a.udata > b.udata) {
	    return 1;
	} else {
	    return 0;
	}
#ifndef VAR32
    } else {
	return longCompare(a,b);
    }
#endif // !VAR32
}

#ifdef VAR32
int compare(const basevar &a,const size_t /*aw*/,
	    const UVARTYPE b,const size_t /*bw*/) {
#else // !VAR32
int compare(const basevar &a,const size_t aw,
	    const UVARTYPE b,const size_t /*bw*/) {
    if (aw <= BASESIZE) {
#endif // !VAR32
	if (a.s && a.sdata < 0)
	    return -1;
	if (a.udata < b) {
	    return -1;
	} else if (a.udata > b) {
	    return 1;
	} else {
	    return 0;
	}
#ifndef VAR32
    } else {
	return longCompare(a,basevar(aw,false,b));
    }
#endif // !VAR32
}

#ifdef VAR32
int compare(const basevar &a,const size_t /*aw*/,
	    const SVARTYPE b,const size_t /*bw*/) {
#else // !VAR32
int compare(const basevar &a,const size_t aw,
	    const SVARTYPE b,const size_t /*bw*/) {
    if (aw <= BASESIZE) {
#endif // !VAR32
	if (a.s) {
	    if (a.sdata < b)
		return -1;
	    else if (a.sdata > b)
		return 1;
	    else
		return 0;
	} else if (b < 0) {
	    return 1;
	}
	UVARTYPE bb(b);
	if (a.udata < bb) {
	    return -1;
	} else if (a.udata > bb) {
	    return 1;
	} else {
	    return 0;
	}
#ifndef VAR32
    } else {
	return longCompare(a,basevar(aw,true,b));
    }
#endif // !VAR32
}

const basevar op2mult(const basevar &a,const size_t aw,
		      const basevar &b,const size_t bw) {
    size_t new_w;
    if (a.s) {
	if (b.s) {
	    if (carry)
		new_w = saturate_width(aw + bw);
	    else
		new_w = w_max(aw,bw);
#ifndef VAR32
	    if (new_w <= BASESIZE)
#endif // !VAR32
		return basevar(new_w,true,a.sdata * b.sdata);
	} else {
	    if (carry)
		new_w = saturate_width(aw + bw + 1);
	    else
		new_w = w_max(aw,bw + 1);
#ifndef VAR32
	    if (new_w <= BASESIZE)
#endif // !VAR32
		return basevar(new_w,true,a.sdata * b.udata);
	}
    } else {
	if (b.s) {
	    if (carry)
		new_w = saturate_width(aw + bw + 1);
	    else
		new_w = w_max(aw + 1,bw);
#ifndef VAR32
	    if (new_w <= BASESIZE)
#endif // !VAR32
		return basevar(new_w,true,a.udata * b.sdata);
	} else {
	    if (carry)
		new_w = saturate_width(aw + bw);
	    else
		new_w = w_max(aw,bw);
#ifndef VAR32
	    if (new_w <= BASESIZE)
#endif // !VAR32
		return basevar(new_w,false,a.udata * b.udata);
	}
    }
#ifndef VAR32
    return op2longMultNC(a.expand(new_w),b.expand(new_w));
#endif // !VAR32
}

const basevar op2mult(const basevar &a,const size_t aw,
		      const UVARTYPE b,const size_t bw) {
    size_t new_w;
    if (a.s) {
	if (carry)
	    new_w = saturate_width(aw + bw + 1);
	else
	    new_w = w_max(aw,bw + 1);
#ifndef VAR32
	if (new_w <= BASESIZE)
#endif // !VAR32
	    return basevar(new_w,true,a.sdata * b);
    } else {
	if (carry)
	    new_w = saturate_width(aw + bw);
	else
	    new_w = w_max(aw,bw);
#ifndef VAR32
	if (new_w <= BASESIZE)
#endif // !VAR32
	    return basevar(new_w,false,a.udata * b);
    }
#ifndef VAR32
    return op2longMultNC(a.expand(new_w),basevar(new_w,false,b));
#endif // !VAR32
}

const basevar op2mult(const basevar &a,const size_t aw,
		      const SVARTYPE b,const size_t bw) {
    size_t new_w;
    if (a.s) {
	if (carry)
	    new_w = saturate_width(aw + bw);
	else
	    new_w = w_max(aw,bw);
#ifndef VAR32
	if (new_w <= BASESIZE)
#endif // !VAR32
	    return basevar(new_w,true,a.sdata * b);
    } else {
	if (carry)
	    new_w = saturate_width(aw + bw + 1);
	else
	    new_w = w_max(aw + 1,bw);
#ifndef VAR32
	if (new_w <= BASESIZE)
#endif // !VAR32
	    return basevar(new_w,true,a.udata * b);
    }
#ifndef VAR32
    return op2longMultNC(a.expand(new_w),basevar(new_w,true,b));
#endif // !VAR32
}


#ifdef VAR32

bool basevar::rxor() const
{
    UVARTYPE	d = udata;
    bool		ret = false;
    for (size_t n = 0; n < width(); ++n) {
	ret ^= (d & 1);
	d >>= 1;
    }
    return ret;
}

bool basevar::rxnor() const
{
    UVARTYPE	d = udata;
    bool		ret = true;
    for (size_t n = 0; n < width(); ++n) {
	ret ^= (d & 1);
	d >>= 1;
    }
    return ret;
}

#else // !VAR32				  

bool basevar::rxor() const
{
    bool ret = false;
    UVARTYPE d;
    size_t n, num;
    if (width() <= BASESIZE) {
	d = udata;
	num = width();
    } else {
	d = 0;
	for (n = 1; n < longData->length; ++n) {
	    d ^= longData->data[n];
	}
	for (n = 0; n < BASESIZE; ++n) {
	    ret ^= (d & 1);
	    d >>= 1;
	}
	d = longData->data[0];
	num = longData->remainder;
    }
    for (n = 0; n < num; ++n) {
	ret ^= (d & 1);
	d >>= 1;
    }
    return ret;
}

bool basevar::rxnor() const
{
    bool ret = true;
    UVARTYPE d;
    size_t n, num;
    if (width() <= BASESIZE) {
	d = udata;
	num = width();
    } else {
	d = 0;
	for (n = 1; n < longData->length; ++n) {
	    d ^= longData->data[n];
	}
	for (n = 0; n < BASESIZE; ++n) {
	    ret ^= (d & 1);
	    d >>= 1;
	}
	d = longData->data[0];
	num = longData->remainder;
    }
    for (n = 0; n < num; ++n) {
	ret ^= (d & 1);
	d >>= 1;
    }
    return ret;
}


bool basevar::longRand() const
{
    if ((longData->data[0] | ~UMASKS(longData->remainder)) != ~UVARTYPE(0))
	return false;
    for (size_t n = 1; n < longData->length; ++n) {
	if (longData->data[n] != ~UVARTYPE(0))
	    return false;
    }
    return true;
}

bool basevar::longRnand() const
{
    if ((longData->data[0] | ~UMASKS(longData->remainder)) != ~UVARTYPE(0))
	return true;
    for (size_t n = 1; n < longData->length; ++n) {
	if (longData->data[n] != ~UVARTYPE(0))
	    return true;
    }
    return false;
}

bool basevar::longRor() const
{
    for (size_t n = 0; n < longData->length; ++n) {
	if (longData->data[n] != 0)
	    return true;
    }
    return false;
}

bool basevar::longRnor() const
{
    for (size_t n = 0; n < longData->length; ++n) {
	if (longData->data[n] != 0)
	    return false;
    }
    return true;
}


const basevar op1longReverse(const basevar &a)
{
    basevar ret(a.w,false,a);
    UVARTYPE *p = ret.longData->data;
    *p = ~*p & UMASKS(ret.longData->remainder);
    ++p;
    for (size_t n = 1; n < ret.longData->length; ++n, ++p)
	*p = ~*p;
    return basevar(a.width(),false,ret);
}

const basevar op2longPlus(const basevar &a,const basevar &b)
{
    size_t width1 = a.width();
    size_t width2 = b.width();
    if (a.isSigned() != b.isSigned()) {
	if (!a.isSigned())
	    width1++;
	else
	    width2++;
    }
    size_t width = w_max(width1,width2,carry);
    return op2longPlusNC(a.expand(width),b.expand(width));
}

const basevar op2longPlusNC(const basevar &a,const basevar &b)
{
    bool s = a.s || b.s;
    int size = (int)a.longData->length;
    LongData *retdata = LongData::allocateBuffer(size);
    retdata->remainder = Remainder(a.w);
    UVARTYPE *vv = retdata->data;
    UVARTYPE *v1data = a.longData->data;
    UVARTYPE *v2data = b.longData->data;
    UVARTYPE carry_flag = 0;
    for (int i = size - 1; i >= 0; i--) {
	vv[i] = v1data[i] + v2data[i] + carry_flag;
	carry_flag = varCarry(v1data[i],v2data[i],vv[i]);
    }
    if (s)
	vv[0] = SMASK(vv[0],retdata->remainder);
    else
	vv[0] &= UMASKS(retdata->remainder);
    return basevar(a.w,s,retdata);
}

const basevar op2longMinus(const basevar &a,const basevar &b)
{
    size_t width1 = a.width();
    size_t width2 = b.width();
    if (a.isSigned() != b.isSigned()) {
	if (!a.isSigned())
	    width1++;
	else
	    width2++;
    }
    size_t width = w_max(width1,width2,carry);
    return op2longMinusNC(a.expand(width),b.expand(width));
}

const basevar op2longMinusNC(const basevar &a,const basevar &b)
{
    int size = (int)a.longData->length;
    LongData *retdata= LongData::allocateBuffer(size);
    retdata->remainder = Remainder(a.w);
    UVARTYPE *vv;
    UVARTYPE borrow;
    UVARTYPE low, high;
    vv = retdata->data;
    UVARTYPE *v1data = a.longData->data;
    UVARTYPE *v2data = b.longData->data;
    borrow = 0;
    for (int n = size - 1; n >= 0; n--) {
	low = varLOW(v1data[n])	- varLOW(v2data[n]) - borrow;
	borrow = (varHIGH(low) == 0 ? 0 : 1);
	high = varHIGH(v1data[n]) - varHIGH(v2data[n]) - borrow;
	borrow = (varHIGH(high) == 0 ? 0 : 1);
	vv[n] = varGEN(high,low);
    }
    vv[0] = SMASK(vv[0],retdata->remainder);
    return basevar(a.w,true,retdata);
}

const basevar op2longMult(const basevar &a,const basevar &b)
{
    size_t width1 = a.w;
    size_t width2 = b.w;
    if (a.s != b.s) {
	if (!a.s)
	    width1++;
	else
	    width2++;
    }
    size_t width = carry ? saturate_width(width1 + width2)
	: w_max(width1,width2);
    return op2longMultNC(a.expand(width),b.expand(width));
}

const basevar op2longMultNC(const basevar &a,const basevar &b)
{
    bool s = a.s || b.s;
    size_t base = a.longData->length;
    LongData *retdata = LongData::allocateBuffer(base);
    retdata->remainder = Remainder(a.w);
    UVARTYPE *ret = retdata->data;
    memset(ret,0,base * sizeof(UVARTYPE));
    int size  = (int)base;
    int left_size, right_size;
    left_size = right_size = size;
    UVARTYPE *v1data = a.longData->data;
    UVARTYPE *v2data = b.longData->data;
    for (int left_pos = left_size - 1; left_pos >= 0; left_pos--) {
	UVARTYPE left, right;
	base--;
	left = v1data[left_pos];
	UVARTYPE left_high, left_low;
	left_high = varHIGH(left);
	left_low = varLOW(left);
	for (int right_pos = right_size - 1; right_pos >= 0; right_pos--) {
	    UVARTYPE carry_flag = 0;
	    int pos = (int)base - (right_size - 1 - right_pos);
	    if (pos < 0)
		break;
	    UVARTYPE before, add_value, add_high, add_low;
	    right = v2data[right_pos];
	    UVARTYPE right_high, right_low;
	    right_high = varHIGH(right);
	    right_low = varLOW(right);
	    before = ret[pos];
	    add_value = left_low * right_low;
	    ret[pos] += add_value + carry_flag;
	    carry_flag = varCarry(before,add_value,ret[pos]);
	    before = ret[pos];
	    add_value = left_low * right_high;
	    add_low = add_value << (BASESIZE / 2);
	    add_high = varHIGH(add_value);
	    ret[pos] += add_low;
	    carry_flag += varCarry(before,add_low,ret[pos]);
	    before = ret[pos];
	    add_value = left_high * right_low;
	    add_low = add_value << (BASESIZE / 2);
	    ret[pos] += add_low;
	    carry_flag += varCarry(before,add_low,ret[pos]);
	    if (--pos < 0)
		continue;
	    before = ret[pos];
	    ret[pos] += add_high + carry_flag;
	    carry_flag = varCarry(before,add_high,ret[pos]);
	    add_high = varHIGH(add_value);
	    before = ret[pos];
	    ret[pos] += add_high;
	    carry_flag += varCarry(before,add_high,ret[pos]);
	    before = ret[pos];
	    add_value = left_high * right_high;
	    ret[pos] += add_value;
	    carry_flag += varCarry(before,add_value,ret[pos]);
	    while (carry_flag != 0 && --pos >= 0) {
		before = ret[pos];
		ret[pos] += carry_flag;
		carry_flag = varCarry(before,0,ret[pos]);
	    }
	}
    }
    if (s)
	ret[0] = SMASK(ret[0],retdata->remainder);
    else
	ret[0] &= UMASKS(retdata->remainder);
    return basevar(a.w,s,retdata);
}


const basevar op2longBitAnd(const basevar &v1,const basevar &v2)
{
    size_t left_width  = v1.w;
    size_t right_width = v2.w;

    if (left_width < right_width)
	return op2longBitAndNC(v1.expand(right_width),v2);
    else if (left_width > right_width)
	return op2longBitAndNC(v1,v2.expand(left_width));
    return op2longBitAndNC(v1,v2);
}

const basevar op2longBitAndNC(const basevar &v1,const basevar &v2)
{
    size_t size = v1.longData->length;
    LongData *vv = LongData::allocateBuffer(size);
    vv->remainder = Remainder(v1.w);
    UVARTYPE *vvp = vv->data;
    UVARTYPE *v1data = v1.longData->data;
    UVARTYPE *v2data = v2.longData->data;
    for (size_t n = 0; n < size; ++n)
	*vvp++ = *v1data++ & *v2data++;
    vv->data[0] &= UMASKS(vv->remainder);
    return basevar(v1.w,false,vv);
}

const basevar op2longBitOr(const basevar &v1,const basevar &v2)
{
    size_t left_width  = v1.w;
    size_t right_width = v2.w;

    if (left_width < right_width)
	return op2longBitOrNC(v1.expand(right_width),v2);
    else if (left_width > right_width)
	return op2longBitOrNC(v1,v2.expand(left_width));
    return op2longBitOrNC(v1,v2);
}

const basevar op2longBitOrNC(const basevar &v1,const basevar &v2)
{
    size_t size = v1.longData->length;
    LongData *vv = LongData::allocateBuffer(size);
    vv->remainder = Remainder(v1.w);
    UVARTYPE *vvp = vv->data;
    UVARTYPE *v1data = v1.longData->data;
    UVARTYPE *v2data = v2.longData->data;
    for (size_t n = 0; n < size; ++n)
	*vvp++ = *v1data++ | *v2data++;
    vv->data[0] &= UMASKS(vv->remainder);
    return basevar(v1.w,false,vv);
}

const basevar op2longBitXor(const basevar &v1,const basevar &v2)
{
    size_t left_width  = v1.w;
    size_t right_width = v2.w;

    if (left_width < right_width)
	return op2longBitXorNC(v1.expand(right_width),v2);
    else if (left_width > right_width)
	return op2longBitXorNC(v1,v2.expand(left_width));
    return op2longBitXorNC(v1,v2);
}

const basevar op2longBitXorNC(const basevar &v1,const basevar &v2)
{
    size_t size = v1.longData->length;
    LongData *vv = LongData::allocateBuffer(size);
    vv->remainder = Remainder(v1.w);
    UVARTYPE *vvp = vv->data;
    UVARTYPE *v1data = v1.longData->data;
    UVARTYPE *v2data = v2.longData->data;
    for (size_t n = 0; n < size; ++n)
	*vvp++ = *v1data++ ^ *v2data++;
    vv->data[0] &= UMASKS(vv->remainder);
    return basevar(v1.w,false,vv);
}

const basevar op2longLshift(const basevar &a,const int b)
{
#ifndef VAR_NO_LeftShiftErrorEXCEPTION
    if (saturate_width(a.w+b) < a.w+b) {
	throw LeftShiftError(a.w+b);
    }
#endif // ! VAR_NO_LeftShiftErrorEXCEPTION
    if (b <= 0)
	return a;
    if (carry) {
	return basevar(a.w + b,a.s,(a,basevar(b,false,UVARTYPE(0))));
    } else {
	if (b >= (int)a.w)
	    return basevar(a.w,a.s,UVARTYPE(0));
	else
	    return basevar(a.w,a.s,(a,basevar(b,false,UVARTYPE(0))));
    }
}

const basevar op2longRshift(const basevar &a,const int b)
{
#if 0
    //return basevar(a.width(),a.isSigned(),Slice::value(a,a.width() - 1,b));
    if (a.Minus())
	return basevar(a.w,a.s,concat(basevar(b,a.s,~SVARTYPE(0)),b,
				      Slice::value(a,a.w - 1,b),a.w - b));
    else
	return basevar(a.w,a.s,concat(basevar(b,a.s,SVARTYPE(0)),b,
				      Slice::value(a,a.w - 1,b),a.w - b));
#else
    if (a.w <= BASESIZE) {
	if (a.s)
	    return basevar(a.w,true,a.sdata >> b);
	else
	    return basevar(a.w,false,a.udata >> b);
    }
    int length = (int)a.longData->length;
    LongData *ret = LongData::allocateBuffer((size_t)length);
    ret->remainder = a.longData->remainder;
    int word_diff = b / BASESIZE;
    int bit_diff  = b - word_diff * BASESIZE;
    UVARTYPE *adata = a.longData->data;
    UVARTYPE *rdata = ret->data;
    int n;
    if (a.Minus()) {
	for (n = 0; n < word_diff; ++n)
	    rdata[n] = UVARTYPE(-1);
	if (bit_diff == 0) {
	    for ( ; n < length; ++n)
		rdata[n] = *adata++;
	} else {
	    rdata[n++] = (SVARTYPE)*adata >> bit_diff;
	    UVARTYPE data = *adata++ << (BASESIZE - bit_diff);
	    for ( ; n < length; ++n) {
		rdata[n] = (data | (*adata >> bit_diff));
		data = *adata++ << (BASESIZE - bit_diff);
	    }
	}
    } else {
	for (n = 0; n < word_diff; ++n)
	    rdata[n] = 0;
	if (bit_diff == 0) {
	    for ( ; n < length; ++n)
		rdata[n] = *adata++;
	} else {
	    rdata[n++] = *adata >> bit_diff;
	    UVARTYPE data = *adata++ << (BASESIZE - bit_diff);
	    for ( ; n < length; ++n) {
		rdata[n] = (data | (*adata >> bit_diff));
		data = *adata++ << (BASESIZE - bit_diff);
	    }
	}
    }
    return basevar(a.w,a.s,ret);
#endif
}


int longCompare(const cyber::basevar &a,const cyber::basevar &b)
{
    if (a.w < b.w)
	return longCompareNC(a.expand(b.w),b);
    else if (a.w > b.w)
	return longCompareNC(a,b.expand(a.w));
    return longCompareNC(a,b);
}

int longCompareNC(const cyber::basevar &a,const cyber::basevar &b)
{
    if (a.Minus()) {
	if (b.Minus()) {
	    if (carry)
		return - longCompareNC(-a,-b);
	    else
		return - longCompareNC(-(a.expand(a.w + 1)),
				       -(b.expand(b.w + 1)));
	} else {
	    return -1;
	}
    } else if (b.Minus()) {
	return 1;
    }
    size_t pos  = wordSize(a.width());
    UVARTYPE *v1data = a.longData->data;
    UVARTYPE *v2data = b.longData->data;
    for (size_t n = 0; n < pos; n++) {
	if (*v1data > *v2data)
	    return 1;
	else if (*v1data < *v2data)
	    return - 1;
	v1data++;
	v2data++;
    }
    return 0;
}

#endif // VAR32				  


#ifdef WIN32
#pragma warning(disable : 4146)
#endif //WIN32
const basevar op2longDiv(const basevar &v1,const basevar &v2)
{
    if (v2 == 0)
#ifdef VAR_NO_ZeroDivideErrorEXCEPTION
    {
        VARASSERTMSG(false,Divide by zero.);
        return v2; // == 0
    }
#else // ! VAR_NO_ZeroDivideErrorEXCEPTION
		throw ZeroDivideError();
#endif // VAR_NO_ZeroDivideErrorEXCEPTION

#if !defined(VAR32)
    if (v1.w < BASESIZE && v2.w < BASESIZE){
#elif defined(VAR_LONGLONG) //VAR64
	if (v1.sdata == ((SLLVAR)1<<63)){
	    if (v2.sdata == ((SLLVAR)1<<63)){
		if (v1.s){
		    if (v2.s){
			return basevar(BASESIZE,true,(SLLVAR)1);
		    } else {
			return basevar(BASESIZE,true,(SLLVAR)-1);
		    }
		} else {
		    if (v2.s){
			return basevar(BASESIZE,true,(SLLVAR)-1);
		    } else {
			return basevar(BASESIZE,false,(ULLVAR)1);
		    }
		}
	    } else {
		if (v1.s){
		    if (!v2.s){
			return basevar(BASESIZE,true,(SLLVAR)(- (((ULLVAR)1<<63) / v2.udata)));
		    } else if (v2.sdata < 0){
			return basevar(BASESIZE,true,(SLLVAR)(((ULLVAR)1<<63) / (ULLVAR)(- v2.sdata)));
		    } else {
			return basevar(BASESIZE,true,(SLLVAR)(- (((ULLVAR)1<<63) / (ULLVAR)v2.sdata)));
		    }
		} else {
		    if (!v2.s){
			return basevar(BASESIZE,false,((ULLVAR)1<<63) / v2.udata);
		    } else if (v2.sdata < 0){
			return basevar(BASESIZE,true,(SLLVAR)(- (((ULLVAR)1<<63) / (ULLVAR)(- v2.sdata))));
		    } else {
			return basevar(BASESIZE,true,(SLLVAR)(((ULLVAR)1<<63) / (ULLVAR)v2.sdata));
		    }
		}
	    }
	} else {
	    if (v2.sdata == ((SLLVAR)1<<63)){
		if (v2.s){
		    if (!v1.s){
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w + 1,true,(SLLVAR)(- (v1.udata / ((ULLVAR)1<<63))));
		    } else if (v1.sdata < 0){
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w + 1,true,(SLLVAR)((ULLVAR)(- v1.sdata) / ((ULLVAR)1<<63)));
		    } else {
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w + 1,true,(SLLVAR)((ULLVAR)v1.sdata / ((ULLVAR)1<<63)));
		    }
		} else {
		    if (!v1.s){
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w,false,v1.udata / ((ULLVAR)1<<63));
		    } else if (v1.sdata < 0){
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w,true,(SLLVAR)(- ((ULLVAR)(- v1.sdata) / ((ULLVAR)1<<63))));
		    } else {
			return basevar((v1.w == BASESIZE) ? BASESIZE : v1.w,true,(SLLVAR)((ULLVAR)v1.sdata / ((ULLVAR)1<<63)));
		    }
		}
	    } else {
#endif
		if (v1.s){
		    SLLVAR d1(v1.sdata);
		    if (v2.s){
			SLLVAR d2(v2.sdata);
			return basevar((v1.w >= BASESIZE) ? BASESIZE : v1.w + 1,true,(SVARTYPE)(d1 / d2));
		    } else if (v1.sdata < 0){
			ULLVAR d2(v2.udata);
			return basevar(v1.w,true,(SVARTYPE)(- ((- d1) / d2)));
		    } else {
			ULLVAR d2(v2.udata);
			return basevar(v1.w,true,(SVARTYPE)(d1 / d2));
		    }
		} else {
		    ULLVAR d1(v1.udata);
		    if (!v2.s){
			ULLVAR d2(v2.udata);
			return basevar(v1.w,false,(UVARTYPE)(d1 / d2));
		    } else if (v2.sdata < 0){
			SLLVAR d2(v2.sdata);
			return basevar((v1.w >= BASESIZE) ? BASESIZE : v1.w + 1,true,(SVARTYPE)(- (d1 / (- d2))));
		    } else {
			SLLVAR d2(v2.sdata);
			return basevar((v1.w >= BASESIZE) ? BASESIZE : v1.w + 1,true,(SVARTYPE)(d1 / d2));
		    }
		}

#if defined(VAR32) && defined(VAR_LONGLONG)
	    }
	}
#endif

#if !defined(VAR32)
    } else {
	size_t width = (v2.isSigned()) ? v1.w + 1 : v1.w;
	bool sign = (!v1.isSigned() && !v2.isSigned()) ? false : true;
	basevar vv1(v1.w + 1, v1.s, v1);
	basevar vv2(v2.w + 1, v2.s, v2);
	int minus=0;

	if (v1.Minus()){
	    vv1.assign(- vv1);
	    if (v2.Minus()){
		vv2.assign(- vv2);
	    } else {
		minus=1;
	    }
	} else if (v2.Minus()){
	    vv2.assign(- vv2);
	    minus=1;
	}

	size_t left_word  = wordSize(vv1.w);
	size_t right_word = wordSize(vv2.w);

	const UVARTYPE *vvr, *vvr_st;
	if (left_word < right_word) {
	    for (int i = 0; i < (int)(right_word - left_word); i++) {
		if (vv2.longData->data[i]) {
		    return basevar(width,sign,UVARTYPE(0));
		}
	    }
	    if (vv1.w <= BASESIZE) {
		SVARTYPE vv;
		vv = vv1.udata / vv2.longData->data[right_word - 1];
		return basevar(width,sign,(minus) ? -vv : vv);
	    }
	    vvr_st = vv2.longData->data + right_word - 1;
	    right_word = left_word;
	} else {
	    if (vv1.w <= BASESIZE) {
		SVARTYPE vv;
		vv = vv1.udata / vv2.udata;
		return basevar(width,sign,(minus) ? -vv : vv);
	    }
	    if (vv2.w <= BASESIZE) {
		vvr_st = &vv2.udata;
	    } else {
		vvr_st = vv2.longData->data + right_word - 1;
	    }
	}
	//
	//                                       MSB                  LSB
	//         +--------+--------+--------+--------+--------+--------+
	//         |00000000|00000000|00000000|  v1[0] |  v1[1] |  v1[2] |
	//         +--------+--------+--------+--------+--------+--------+
	//         |                 |                          |
	//      vv_buf             vv_st                      vvl_st
	//
	LongData *vv_longdata = LongData::allocateBuffer(left_word << 1);
	UVARTYPE *vv_buf = vv_longdata->data;
	UVARTYPE *vv,  *vv_st  = vv_buf + left_word - 1;
	UVARTYPE *vvl, *vvl_st = vv_st + left_word;
	memset(vv_buf, 0, left_word * sizeof(UVARTYPE));
	memcpy(vv_st + 1, vv1.longData->data, left_word * sizeof(UVARTYPE));

	size_t l, r, g1 = left_word * BASESIZE;
	UVARTYPE carryl, carry;
	UVARTYPE msbl, msb;
	UVARTYPE *vv_st_1 = vv_st + 1;
	for (; g1 > 0; g1--) {
	    carryl = 0;
	    carry = *vv_st_1 >> (BASESIZE - 1);
	    for (l = 0, vvl = vvl_st, vv = vv_st; l < left_word;
		 l++, vvl--, vv--){
		msbl = *vvl >> (BASESIZE - 1);
		msb  = *vv  >> (BASESIZE - 1);
		*vvl = (*vvl << 1) | carryl;
		*vv  = (*vv  << 1) | carry;
		carryl = msbl;
		carry  = msb;
	    }
	    for (carry = 0, r = right_word, vv = vv_st, vvr = vvr_st;
		 r > 0; r--, l--, vv--, vvr--){
		if (carry) {
		    carryl = (*vv <= *vvr);
		    *vv   -= *vvr + 1;
		}
		else {
		    carryl = (*vv < *vvr);
		    *vv   -= *vvr;
		}
		carry = carryl;
	    }
	    for (; l > 0; l--, vv--) {
		if (carry) {
		    carryl = (*vv == 0);
		    (*vv)--;
		}
		else {
		    carryl = 0;
		}
		carry = carryl;
	    }
	    if ( carryl ) {
		for (carry = 0, vv = vv_st, vvr = vvr_st;
		     r < right_word;
		     r++, vv--, vvr--){
		    msbl = *vv;
		    *vv += *vvr + carry;
		    carry = ((msbl & *vvr) | ((msbl ^ *vvr) & (~*vv))) >> (BASESIZE - 1);
		}
		for (l = left_word - right_word; l > 0; l--, vv--) {
		    msbl = *vv;
		    *vv += carry;
		    carry = (msbl & (~*vv)) >> (BASESIZE - 1);
		}
	    }
	    else {
		*vvl_st |= 1;
	    }
	}
	LongData *retdata = LongData::allocateBuffer(left_word);
	retdata->remainder = Remainder(vv1.w);
	UVARTYPE *ret = retdata->data;
	for (size_t n = 0; n < left_word; ++n)
	    ret[n] = vv_st_1[n];
	vv_longdata->deallocate();
	return basevar(width,sign,(minus) ? - basevar(left_word * BASESIZE,false,retdata) : basevar(left_word * BASESIZE,false,retdata));
    }
#endif // !defined(VAR32)
}

const basevar op2longMod(const basevar &v1,const basevar &v2)
{
    if (v2 == 0)
#ifdef VAR_NO_ZeroDivideErrorEXCEPTION
    {
        VARASSERTMSG(false,Divide by zero.);
        return v2; // == 0
    }
#else // ! VAR_NO_ZeroDivideErrorEXCEPTION
		throw ZeroDivideError();
#endif // VAR_NO_ZeroDivideErrorEXCEPTION

#if !defined(VAR32)
    if (v1.w < BASESIZE && v2.w < BASESIZE){
#elif defined(VAR_LONGLONG) //VAR64
	if (v1.sdata == ((SLLVAR)1<<63)){
	    if (v2.sdata == ((SLLVAR)1<<63)){
		if (! v1.s && ! v2.s){
		    return basevar(BASESIZE,false,(ULLVAR)0);
		} else {
		    return basevar(BASESIZE,true,(SLLVAR)0);
		}
	    } else {
		if (v1.s){
		    if (!v2.s){
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w + 1,true,(SLLVAR)(- (((ULLVAR)1<<63) % v2.udata)));
		    } else if (v2.sdata < 0){
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w,true,(SLLVAR)(- (((ULLVAR)1<<63) % (ULLVAR)(- v2.sdata))));
		    } else {
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w,true,(SLLVAR)(- (((ULLVAR)1<<63) % (ULLVAR)v2.sdata)));
		    }
		} else {
		    if (!v2.s){
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w,false,((ULLVAR)1<<63) % v2.udata);
		    } else if (v2.sdata < 0){
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w,true,(SLLVAR)(((ULLVAR)1<<63) % (ULLVAR)(- v2.sdata)));
		    } else {
			return basevar((v2.w == BASESIZE) ? BASESIZE : v2.w,true,(SLLVAR)(((ULLVAR)1<<63) % (ULLVAR)v2.sdata));
		    }
		}
	    }
	} else {
	    if (v2.sdata == ((SLLVAR)1<<63)){
		if (v1.s){
		    return basevar(BASESIZE,true,v1.sdata);
		} else if (v2.s){
		    return basevar(BASESIZE,true,(SLLVAR)((v1.udata > ((ULLVAR)1<<63)) ? (v1.udata & ((ULLVAR)~1>>1)) : v1.udata));
		} else {
		    return basevar(BASESIZE,false,(v1.udata > ((ULLVAR)1<<63)) ? (v1.udata & ((ULLVAR)~1>>1)) : v1.udata);
		}
	    } else {
#endif

		if (v1.s){
		    SLLVAR d1(v1.sdata);
		    if (v2.s){
			SLLVAR d2(v2.sdata);
			return basevar(v2.w,true,(SVARTYPE)(d1 % d2));
		    } else if (v1.sdata < 0){
			ULLVAR d2(v2.udata);
			return basevar((v2.w >= BASESIZE) ? BASESIZE : v2.w + 1,true,(SVARTYPE)(- ((- d1) % d2)));
		    } else {
			ULLVAR d2(v2.udata);
			return basevar((v2.w >= BASESIZE) ? BASESIZE : v2.w + 1,true,(SVARTYPE)(d1 % d2));
		    }
		} else {
		    ULLVAR d1(v1.udata);
		    if (!v2.s){
			ULLVAR d2(v2.udata);
			return basevar(v2.w,false,(UVARTYPE)(d1 % d2));
		    } else if (v2.sdata < 0){
			SLLVAR d2(v2.sdata);
			return basevar(v2.w,true,(SVARTYPE)(d1 % (- d2)));
		    } else {
			SLLVAR d2(v2.sdata);
			return basevar(v2.w,true,(SVARTYPE)(d1 % d2));
		    }
		}

#if defined(VAR32) && defined(VAR_LONGLONG)
	    }
	}
#endif

#if !defined(VAR32)
    } else {
	size_t width = (v1.isSigned() && !v2.isSigned()) ? v2.w + 1 : v2.w;
	bool sign = (!v1.isSigned() && !v2.isSigned()) ? false : true;
	basevar vv1(v1.w + 1, v1.s, v1);
	basevar vv2(v2.w + 1, v2.s, v2);
	int minus=0;

	if (v1.Minus()){
	    vv1.assign(- vv1);
	    if (v2.Minus()){
		vv2.assign(- vv2);
	    }
	    minus=1;
	} else if (v2.Minus()){
	    vv2.assign(- vv2);
	}

	size_t left_word  = wordSize(vv1.w);
	size_t right_word = wordSize(vv2.w);

	const UVARTYPE *vvr, *vvr_st;
	if (left_word < right_word) {
	    for (int i = 0; i < (int)(right_word - left_word); i++) {
		if (vv2.longData->data[i]) {
		    return basevar(width,sign,(minus) ? -vv1 : vv1);
		}
	    }
	    if (left_word == 1) {
		SVARTYPE vv;
		vv = vv1.udata % vv2.longData->data[right_word - 1];
		return basevar(width,sign,(minus) ? -vv : vv);
	    }
	    vvr_st = vv2.longData->data + right_word - 1;
	    right_word = left_word;
	} else {
	    if (left_word == 1) {
		SVARTYPE vv;
		vv = vv1.udata % vv2.udata;
		return basevar(width,sign,(minus) ? -vv : vv);
	    }
	    if (vv2.w <= BASESIZE) {
		vvr_st = &vv2.udata;
	    } else {
		vvr_st = vv2.longData->data + right_word - 1;
	    }
	}
	//
	//                                       MSB                  LSB
	//         +--------+--------+--------+--------+--------+--------+
	//         |00000000|00000000|00000000|  v1[0] |  v1[1] |  v1[2] |
	//         +--------+--------+--------+--------+--------+--------+
	//         |                 |                          |
	//      vv_buf             vv_st                      vvl_st
	//
	LongData *vv_longdata = LongData::allocateBuffer(left_word << 1);
	UVARTYPE *vv_buf = vv_longdata->data;
	UVARTYPE *vv,  *vv_st  = vv_buf + left_word - 1;
	UVARTYPE *vvl, *vvl_st = vv_st + left_word;
	memset(vv_buf, 0, left_word * sizeof(UVARTYPE));
	memcpy(vv_st + 1, vv1.longData->data, left_word * sizeof(UVARTYPE));

	size_t l, r, g1 = left_word * BASESIZE;
	UVARTYPE carryl, carry;
	UVARTYPE msbl, msb;
	UVARTYPE *vv_st_1 = vv_st + 1;
	for (; g1 > 0; g1--) {
	    carryl = 0, carry = *vv_st_1 >> (BASESIZE - 1);
	    for (l = 0, vvl = vvl_st, vv = vv_st;
		 l < left_word;
		 l++, vvl--, vv--){
		msbl = *vvl >> (BASESIZE - 1);
		msb  = *vv  >> (BASESIZE - 1);
		*vvl = (*vvl << 1) | carryl;
		*vv  = (*vv  << 1) | carry;
		carryl = msbl;
		carry  = msb;
	    }
	    for (carry = 0, r = right_word, vv = vv_st, vvr = vvr_st;
		 r > 0;
		 r--, l--, vv--, vvr--){
		if (carry) {
		    carryl = (*vv <= *vvr);
		    *vv   -= *vvr + 1;
		}
		else {
		    carryl = (*vv < *vvr);
		    *vv   -= *vvr;
		}
		carry = carryl;
	    }
	    for (; l > 0; l--, vv--) {
		if (carry) {
		    carryl = (*vv == 0);
		    (*vv)--;
		}
		else {
		    carryl = 0;
		}
		carry = carryl;
	    }
	    if ( carryl ) {
		for (carry = 0, vv = vv_st, vvr = vvr_st;
		     r < right_word;
		     r++, vv--, vvr--){
		    msbl = *vv;
		    *vv += *vvr + carry;
		    carry = ((msbl & *vvr) | ((msbl ^ *vvr) & (~*vv))) >> (BASESIZE - 1);
		}
		for (l = left_word - right_word; l > 0; l--, vv--) {
		    msbl = *vv;
		    *vv += carry;
		    carry = (msbl & (~*vv)) >> (BASESIZE - 1);
		}
	    }
	}
	size_t size = wordSize(width);
	if (size == 1) {
	    UVARTYPE ret = vv_buf[left_word - 1];
	    vv_longdata->deallocate();
	    return basevar(width,sign,(minus) ? (UVARTYPE)(-(SVARTYPE)ret) : ret);
	} else {
	    LongData *retdata = LongData::allocateBuffer(left_word);
	    retdata->remainder = Remainder(width);
	    UVARTYPE *ret = retdata->data;
	    for (size_t n = 0; n < left_word; ++n)
		ret[n] = vv_buf[n];
	    vv_longdata->deallocate();
	    return basevar(width,sign,(minus) ? - basevar(left_word * BASESIZE,false,retdata) : basevar(left_word * BASESIZE,false,retdata));
	}
    }
#endif // !defined(VAR32)
}

} // namespace cyber

// COM_SIG *****************************************************
// COM_SIG *
// COM_SIG *   ClassMate  Ver 2.20  release  2005/03/31  
// COM_SIG *     FileName varop.cpp LineCount 1229
// COM_SIG *
// COM_SIG *****************************************************
