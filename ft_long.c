#include "include/ft_printf.h"

int	ft_long(va_list ap)
{
	t_format	*format;

	format = ft_format(SET_FORMAT);
	format->length = 'l';
	format->set = 1;
	format->conversion = format->conversion + 32;
	return (ft_convertor(ap, format));
}
