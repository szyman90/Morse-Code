#include<stdio.h>
#include<stdlib.h>
#include <ctype.h>
#include <string.h>
#define BUF_LEN 500
#define CHECK_LEN 53
#define MORSE_LEN 52

//array with all character
char check[]={
        " 0123456789abcdefghijklmnopqrstuvwxyz.,'_:;?!-+/()=@"
};
//array with character in morse code
// <editor-fold desc="morse code">
char *morse[]={
        (".-..-"), //
        ("-----"),//0
        (".----"),
        ("..---"),
        ("...--"),
        ("....-"),
        ("....."),//5
        ("-...."),
        ("--..."),
        ("---.."),
        ("----."),//9
        // letter
        (".-"),// a
        ("-..."),
        ("-.-."),
        ("-.."),
        ("."),
        ("..-."), // f
        ("--."),
        ("...."),
        (".."),
        (".---"), // j
        ("-.-"),
        (".-.."),
        ("--"),
        ("-."), // n
        ("---"),
        (".--."),
        ("--.-"),
        (".-."), // r
        ("..."),
        ("-"),
        ("..-"),
        ("...-"), // v
        (".--"),
        ("-..-"),
        ("-.--"),
        ("--.."),// z
        // special symbol
        (".-.-.-"), //dot
        ("--..--") ,// comma
        (".----."), // single apostrophe
        ("..--.-"), // accentuation
        ("---..."), // colon
        ("-.-.-."), // semicolon
        ("..--.."), // question mark
        ("-.-.--"), // exclamation mark
        ("-....-"), // dash, minus
        (".-.-."), // plus
        ("-..-."), // backslash
        ("-.--."), // opening parenthesis
        ("-.--.-"), // closing parenthesis
        ("-...-"), // equal
        (".--.-.") // at

};
// </editor-fold>

//define tree structure
typedef struct tree {
    struct tree *left;
    struct tree *right;
    char data;
} tree;

tree *root;

//implement the rest of character in morse code
void insert_rec(tree **tree, char ch, const char *s){
    if(*tree == NULL)
        *tree = calloc(1, sizeof(**tree));
    if(*s == '\0')
        (*tree)->data = ch;
    else if(*s == '.')
        insert_rec(&(*tree)->left, ch, ++s);
    else if(*s == '-')
        insert_rec(&(*tree)->right, ch, ++s);
}
//implement first symbol of character in morse code
void insert_first(char ch, char s[]){
    if(*s == '.')
        insert_rec(&root->left, ch, ++s);
    else if(*s == '-')
        insert_rec(&root->right, ch, ++s);
}
//function to create tree for morse code character (it will be used to decode)
void create_tree(void) {
    root = calloc(1, sizeof(*root));
    for(int i = 0; i < MORSE_LEN; i++)
        insert_first(check[i], morse[i]);
}

int menu() {
    int back, error, choice;

    do {
        printf("MENU\n");
        printf("1. Code phrase in Morse\n");
        printf("2. Decode from Morse\n");
        printf("3. Close application\n");
        choice = getchar();

        if(choice == 10) {
            choice = getchar();
        }

        if(choice == '1') {
            back = 1;
            error = 0;
        }
        else if(choice == '2') {
            back = 2;
            error = 0;
        }
        else if(choice == '3') {
            back = 3;
            error = 0;
        }
        else {
            system("cls");
            printf("Error, incorrect symbol\n");
            error = 1;
        }
    }while(error);
    return back;
}
//function to read line from file
int readline(FILE* f, char line[]) {
    int len=0;
    char c;

    while((c=fgetc(f)) != '\n' && c!=EOF) {
        line[len]=c;
        len++;
    }
    line[len]=0;
    return len;
}
//change big character to small, because big letters don't exist in morse code
void big_to_small(char line[]) {
    int i = 0;
    while(line[i] != 0) {
        line[i] = tolower(line[i]);
        i++;
    }
}
//function to code from latin to morse code
int code(char line[], FILE* g) {
    for(int i = 0; i < strlen(line); i++) {
        for (int j = 0; j < CHECK_LEN; j++) {
            if(line[i] == check[j]) {
                fprintf(g, "%s/", morse[j]);
            }
        }
    }
    fprintf(g, "\n");
    return 0;
}
//function to choice file and type of open this
//also here is while loop, where is call the coding function
int choice_handling_code() {
    char line[BUF_LEN];
    FILE* f;
    char file_name[30];
    printf("Give name of file with text\n");
    scanf("%s", file_name);
    f=fopen(file_name, "r");
    if(f==NULL) {
        printf("error\n");
        return 1;
    }

    int add_or_clear;
    getchar();
    printf("1. adding\n2.clear and write\n");
    add_or_clear = getchar();
    FILE* g;

    if(add_or_clear == '1')
        g=fopen("code.txt", "a");
    else if(add_or_clear == '2')
        g=fopen("code.txt", "w");
    else {
    printf("error");
    return 1;
    }

    while((readline(f,line))>0) {
        big_to_small(line);
        code(line, g);
    }

    fclose(g);
    fclose(f);
    system("cls");
    printf("Your text is in code.txt file.\n");
    return 1;
}
//function to find character in morse code tree structure
static void decode_rec(tree *tree, const char *s, FILE* g){
    if(tree == NULL) return;
    if(*s == '\0' || *s == EOF) {
        fputc(tree->data, g);
        fputc(10, g);
    }
    else if(*s == '/') {
        fputc(tree->data, g);
        decode_rec(root, ++s, g);
    }
    else if(*s == '.')
        decode_rec(tree->left, ++s, g);
    else if(*s == '-')
        decode_rec(tree->right, ++s, g);
}
//function to choice file where is morse code to decoding
//also here is while loop, where is call the coding function
int choice_handling_decode(){
    FILE *f;
    FILE *g;
    char file_name[30];
    printf("Give name of file with morse code\n");
    scanf("%s", file_name);
    f=fopen(file_name, "r");
    g=fopen("decode.txt", "w");
    if(f==NULL || g == NULL) {
        printf("error\n");
        return 1;
    }
    char line[BUF_LEN];
    while((readline(f,line))>0) {
        decode_rec(root, line, g);
    }
    fclose(f);
    fclose(g);
    printf("Your text is in decode.txt file.\n");
    return 0;
}
//function to free dynamic allocate memory
static void drop_tree(tree *loc_root) {
    if(loc_root){
        drop_tree(loc_root->left);
        drop_tree(loc_root->right);
        free(loc_root);
    }
}
//main function
int main()
{

    system("cls");
    int end_app = 1;
    create_tree();
    do
    {
        int choice;
        choice = menu();
        switch(choice) {
            case 1:
                choice_handling_code();
                break;
            case 2:
                choice_handling_decode();
                break;
            case 3:
                end_app = 0;
                break;
            default:
                end_app = 1;
        }

    } while (end_app);
    //printf("łąć");
    drop_tree(root);
    return 0;
}
