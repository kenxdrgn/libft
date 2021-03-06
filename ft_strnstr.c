/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jliew <jliew@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/29 20:52:59 by jliew             #+#    #+#             */
/*   Updated: 2020/09/04 14:53:47 by jliew            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_strxcmp(const char *s1, const char *s2)
{
	if (!*s2)
		return (0);
	if (*s1 != *s2)
		return (*s1 - *s2);
	return (ft_strxcmp(s1 + 1, s2 + 1));
}

char		*ft_strnstr(const char *s, const char *t, size_t n)
{
	size_t	t_len;

	if (!(t_len = ft_strlen(t)))
		return (char *)(s);
	while (n && *s)
	{
		if ((*s == *t) && n >= t_len)
			if (!ft_strxcmp(s, t))
				return (char *)(s);
		s++;
		n--;
	}
	return (NULL);
}
