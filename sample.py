from sklearn.datasets import make_classification
import lightgbm as lgb

rgr = lgb.LGBMClassifier()
X,y = make_classification(n_features=40, n_samples=100000)
rgr.fit(X,y)
print(rgr.feature_importances_)
