train = load('prep_data/train.txt')
test = load('prep_data/test.txt')
sepsis = readfis("sepsis.fis")
X_test = test(:, 1:4)
X_train = train(:, 1:4)

y_test = test(:, 5)
y_train = train(:, 5)

y_pred = round(evalfis(X_test, sepsis))

dlmwrite('anfis_pred.txt', y_pred, ' ');