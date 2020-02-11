/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amunoz-p <amunoz-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/10 19:41:11 by amunoz-p          #+#    #+#             */
/*   Updated: 2020/02/11 18:06:29 by amunoz-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>

char	*ft_strcpy(char *dest, char *src);
int		ft_strlen(char *str);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s1);

int main(void)
{
	char a[10] = "papi\0";
	printf("FUNCION ORIGINAL ENTRE [] Y FUNCION LIBSAM ENTRE ()\n");
	printf("\n");
	printf(" TEST funcion !!!!!FT_STRCPY!!!!\n");
	printf("[%s]    (%s)\n", strcpy(a, "pepitooo"), ft_strcpy(a, "pepitooo"));
	printf("[%s]    (%s)\n", strcpy(a, ""), ft_strcpy(a, ""));
	printf("\n");
	printf(" TEST funcion !!!!!FT_STRLEN!!!!\n");
	printf("[%lu]   (%d)\n", strlen("hola"), ft_strlen("hola"));
	printf("[%lu]  (%d)\n", strlen("aadios pedro"), ft_strlen("aadios pedro"));
	printf("\n");
	printf(" TEST funcion !!!!!FT_STRCMP!!!!\n");
	printf("[%d]    (%d)\n", strcmp("ho", "h"), ft_strcmp("ho", "h"));
	printf("[%d]    (%d)\n", strcmp("hola", "hola"), ft_strcmp("hola", "hola"));
	printf("[%d]   (%d)\n", strcmp("h", "hola"), ft_strcmp("h", "hola"));
	printf("[%d]   (%d)\n", strcmp("AAAb", "h"), ft_strcmp("AAAb", "h"));
	printf("[%d]   (%d)\n", strcmp("", "h"), ft_strcmp("", "h"));
	printf("[%d]   (%d)\n", strcmp("h", ""), ft_strcmp("h", ""));
	printf("[%d]   (%d)\n", strcmp("", ""), ft_strcmp("", ""));
	printf("\n");
	printf(" TEST funcion !!!!!FT_STRDUP!!!!\n");
	printf("[%s]  (%s)\n", strdup("caracola"), ft_strdup("caracola"));
	printf("[%s]  (%s)\n", strdup("hostiaaas PILOTES. AHHHHHHH que son de bones"), ft_strdup("hostiaaas PILOTES. AHHHHHHH que son de bones"));
	printf("[%s]  (%s)\n", strdup(""), ft_strdup(""));
	return (0);
}