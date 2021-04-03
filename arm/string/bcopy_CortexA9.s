/*
 * Copyright (c) 2010 Apple Inc. All rights reserved.
 *
 * @APPLE_LICENSE_HEADER_START@
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 *
 *  This file implements the following functions for the Cortex-A9 processor:
 *
 *  void bcopy(const void * source,
 *             void * destination,
 *             size_t length);
 *
 *  void *memmove(void * destination,
 *                const void * source,
 *                size_t n);
 *
 *  void *memcpy(void * restrict destination,
 *               const void * restrict source,
 *               size_t n);
 *
 * All copy n successive bytes from source to destination.  Memmove and memcpy
 * return destination, whereas bcopy has no return value.  Copying takes place
 * as if it were through a temporary buffer -- after return destination
 * contains exactly the bytes from source, even if the buffers overlap (this is
 * not required of memcpy by the C standard; its behavior is undefined if the
 * buffers overlap, but we are holding ourselves to the historical behavior of
 * this function on OS X and iOS).
 */

