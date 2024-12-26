import numpy as np
import matplotlib.pyplot as plt


def main() -> None:
    a = np.array([1, 2, 3, 4])
    b = np.array([1, 3, 3, 4])
    print(a)
    print(b)
    c = a + b
    plt.plot(a, c)
    plt.show()


if __name__ == "__main__":
    main()
