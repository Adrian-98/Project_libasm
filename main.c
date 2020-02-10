/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amunoz-p <amunoz-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 19:41:11 by amunoz-p          #+#    #+#             */
/*   Updated: 2020/02/10 20:25:05 by amunoz-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>

int main(void)
{
	char a[10] = "papi";
	printf("%s\n", ft_strcpy(a, "hola"));
	//printf("original =%lu  \npropia=%d\n", strlen("hola"), ft_strlen("hola"));
	return (0);
}