/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eelasam <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/20 12:13:19 by eelasam           #+#    #+#             */
/*   Updated: 2022/12/20 12:13:33 by eelasam          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <stddef.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

int		ft_printf(const char *args, ...);

void	ft_putchar(char c, int *len);
void	ft_putnbr(int nb, int *len);
void	ft_putstr(char *str, int *len);
void	ft_putnbru(unsigned int nb, int *len);
void	ft_puthex(unsigned int nb, char c, int *len);
void	ft_format(char c, int *len, va_list args);
void	ft_putptr(long unsigned int nb, int *len);

#endif
