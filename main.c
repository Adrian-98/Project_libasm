/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amunoz-p <amunoz-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 19:41:11 by amunoz-p          #+#    #+#             */
/*   Updated: 2020/02/11 13:09:36 by amunoz-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>

char *ft_strcpy(char *dest, char *src);

int main(void)
{
	char a[10] = "papi\0";
	printf("%s\n", ft_strcpy(a, "hoola"));
	//printf("original =%lu  \npropia=%d\n", strlen("hola"), ft_strlen("hola"));
	return (0);
}