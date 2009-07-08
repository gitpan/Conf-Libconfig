#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"

#undef do_open
#undef do_close

#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#undef string
#include <string>
#include <libconfig.h++>
using namespace std;
using namespace libconfig;

namespace libconfig
{
	class LibConfig : public Config
	{
		public:
			inline int LUVInt(const char *path)
			{
				int Value;
				lookupValue(path, Value);
				return Value;
			}

			inline const char * LUVChar(const char *path)
			{
				const char * Value;
				lookupValue(path, Value);
				return Value;
			}
	};
};

MODULE = Conf::Libconfig PACKAGE = Conf::Libconfig

LibConfig *
LibConfig::new()

void
LibConfig::DESTROY()

void
LibConfig::readFile(const char *filename)

int
LibConfig::LUVInt(path)
	const char *path

const char *
LibConfig::LUVChar(path)
	const char *path
