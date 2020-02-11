/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amunoz-p <amunoz-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 19:41:11 by amunoz-p          #+#    #+#             */
/*   Updated: 2020/02/11 14:52:56 by amunoz-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>

char	*ft_strcpy(char *dest, char *src);
int		ft_strlen(char *str);
int		ft_strcmp(const char *s1, const char *s2);

int main(void)
{
	// char a[10] = "papi\0";
	// printf("%s\n", ft_strcpy(a, "hoola"));
	//printf("original =%lu  \npropia=%d\n", strlen("hola"), ft_strlen("hola"));
	printf("original =%d propia =%d\n", strcmp("ho", "h"), ft_strcmp("ho", "h"));
	return (0);
}