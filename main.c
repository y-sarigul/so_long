# include "mlx.h"

int main(void)
{
        void *mlx_ptr = mlx_init();
        void *win_ptr = mlx_new_window(mlx_ptr, 1500, 750, "Deneme");

        int x;
        int y = 0;

        while (y <= 750)
        {
                x = 0;
                while (x <= 1500)
                {
                        mlx_pixel_put(mlx_ptr, win_ptr, x, y, 5353205);
                        x++;
                }
                y++;
        }
        mlx_loop(mlx_ptr); 
        return (0);
}
