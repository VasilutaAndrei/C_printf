#include "include/ft_printf.h"

int	ft_pointer(va_list ap)
{
	void		*addr;
	char		*pref;
	t_format	*format;

	pref = "0x";
	format = ft_format(SET_FORMAT);
	addr = va_arg(ap, void *);
	ft_putnbr((unsigned long long)addr, 16, 'x');
	ft_join(format, pref);
	return (0);
}
