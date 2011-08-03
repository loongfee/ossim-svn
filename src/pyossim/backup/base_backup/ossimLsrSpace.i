/*-----------------------------------------------------------------------------
 * Filename        : ossimLsrSpace.i
 * Author          : Vipul Raheja
 * License         : See top level LICENSE.txt file.
 * Description     : Contains SWIG-Python of class ossimLsrSpace
 * -----------------------------------------------------------------------------*/

%module pyossim

%{

#include <ossim/base/ossimLsrSpace.h>
#include <ossim/base/ossimEcefPoint.h>
#include <ossim/base/ossimEcefVector.h>
#include <ossim/base/ossimMatrix3x3.h>
#include <ossim/base/ossimNotifyContext.h>

%}

/* Handling operators */
%rename(__set__) ossimLsrSpace::operator=;
%rename(__cmp__) ossimLsrSpace::operator==;
%rename(__ne__) ossimLsrSpace::operator!=;
%rename(__lshift__) operator<<;
%rename(ossimLsrSpace_print) print;

/* Wrapping class ossimLsrSpace */
class ossimLsrSpace
{
        public:
                /*!
                 * DEFAULT & COPY CONSTRUCTOR: 
                 */
                ossimLsrSpace() {}

                ossimLsrSpace(const ossimLsrSpace& copy_this)
                        :
                                theLsrToEcefRotMatrix(copy_this.theLsrToEcefRotMatrix),
                                theOrigin(copy_this.theOrigin) {}

                /*!
                 * CONSTRUCTORS: The following three constructors accept an ECEF origin
                 * and two of the three axes direction vectors. Note the use of the dummy
                 * "int" argument (not used) to hold the place of the unspecified axes. 
                 */
                ossimLsrSpace(const ossimEcefPoint&  origin,
                                const ossimEcefVector& x_dir_ecf_vec,
                                const ossimEcefVector& y_dir_ecf_vec,
                                const int z_not_provided_space_holder);
                ossimLsrSpace(const ossimEcefPoint&  origin,
                                const ossimEcefVector& x_dir_ecf_vec,
                                const int y_not_provided_space_holder,
                                const ossimEcefVector& z_dir_ecf_vec);
                ossimLsrSpace(const ossimEcefPoint&  origin,
                                const int x_not_provided_space_holder,
                                const ossimEcefVector& y_dir_ecf_vec,
                                const ossimEcefVector& z_dir_ecf_vec);

                /*!
                 * CONSTRUCTOR: ossimLsrSpace(ossimGpt, y_azimuth)
                 * This constructor sets up a local coordinate system centered at the
                 * specified groundpoint, with the Z-axis normal to the ellipsoid and the
                 * Y-axis rotated clockwise from north by the y_azimuth. This angle defaults
                 * to 0, producing an East-North-Up (ENU) system.
                 */
                ossimLsrSpace(const ossimGpt& origin,
                                const double&   y_azimuth=0);
                ossimLsrSpace(const ossimEcefPoint& origin,
                                const NEWMAT::Matrix& lsrToEcfRot)
                        : theLsrToEcefRotMatrix (lsrToEcfRot), theOrigin (origin) {}
                ~ossimLsrSpace() {}

                /*!
                 * OPERATORS:
                 */
                bool operator == (const ossimLsrSpace&) const;
                bool operator != (const ossimLsrSpace& that) const
                {
                        return !(*this == that); 
                }
                const ossimLsrSpace& operator = (const ossimLsrSpace& space);

                /*!
                 * DATA ACCESS METHODS:
                 */
                const ossimEcefPoint&  origin()          const { return theOrigin; }
                const NEWMAT::Matrix&  lsrToEcefRotMatrix() const
                {
                        return theLsrToEcefRotMatrix; 
                }
                NEWMAT::Matrix ecefToLsrRotMatrix() const
                {
                        return theLsrToEcefRotMatrix.t(); 
                }

                /*!
                 * METHOD: lsrSpaceErrorMessage()
                 * Convenience method accessible to all owners of an ossimLsrSpace for
                 * displaying an error message when LSR spaces do not match between
                 * objects. All operations between LSR objects must be in a common space.
                 */
                static ostream& lsrSpaceErrorMessage(ostream& os=ossimNotify(ossimNotifyLevel_INFO));

                /*!
                 * Debug Dump: 
                 */
                void print(ostream& stream = ossimNotify(ossimNotifyLevel_INFO)) const;

                friend ostream& operator<< (ostream& os , const ossimLsrSpace& instance)
                {
                        instance.print(os); return os; 
                }

        private:
                NEWMAT::Matrix   theLsrToEcefRotMatrix;
                ossimEcefPoint   theOrigin;
};