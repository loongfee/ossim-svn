/*-----------------------------------------------------------------------------
 * Filename        : ossimFilename.i
 * Author          : Vipul Raheja
 * License         : See top level LICENSE.txt file.
 * Description     : Contains SWIG-Python of class ossimProperty
 * -----------------------------------------------------------------------------*/

%module pyossim

%{

#include <ossim/base/ossimConstants.h>
#include <ossim/base/ossimString.h>
#include <ossim/base/ossimFilename.h>

%}

/* Handling assignment operator */
%rename(__cmp__) ossimFilename::operator==;

/* Wrapping class */
%include "ossim/base/ossimConstants.h"
%include "ossim/base/ossimFilename.h"
