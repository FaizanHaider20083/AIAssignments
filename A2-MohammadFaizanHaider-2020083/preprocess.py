

def find(s, ch):
    return [i for i, ltr in enumerate(s) if ltr == ch]


def heuristics():
    f = open('heuristics.pl', 'w')
    ff = open('distance.pl', 'r')
    lines = ff.readlines()
    print(lines)
    for i in lines:
        print(i, end="")
        line = i[0:len(i)-3]
        print(line)
        commasList = find(i, ',')
        number = i[commasList[1] + 1: len(i) - 3]
        number = int(number) - 100
        f.write(line + "," + str(number) + ").")
        f.write("\n")

    ff.close()
    f.close()


def extract_csv():
    print("Here came")
    import pandas as pd

    f = open('distance.pl', 'w')
    df = pd.read_csv("roaddistance.csv", skiprows=1)
    df = df.dropna(axis=1)
    print(df)
    cols = list(df.columns.values)
    print(cols)
    len = 0

    for index, row in df.iterrows():
        len = len + 1
        for col in cols:
            if col == "Distance in Kilometres":
                city_name = row[col]
            elif row[col] == '-':
                distance = 0
                f.write("distance('" + city_name + "','" +
                        col + "'," + str(distance) + ").")
                f.write("\n")
            else:
                distance = row[col]
                f.write("distance('" + city_name + "','" +
                        col + "'," + str(distance) + ").")
                f.write("\n")
    print(len)
    return True


def func2(X):
    print("X is", X)


if __name__ == "__main__":
    heuristics()
