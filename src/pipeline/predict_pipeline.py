import sys
import pandas as pd
from src.exception import CustomException
from src.utils import load_object


class PredictPipeline:
    def __init__(self):
        pass

    def predict(self,features):
        try:
            model_path=os.path.join("artifacts","model.pkl")
            preprocessor_path=os.path.join('artifacts','preprocessor.pkl')
            print("Before Loading")
            model=load_object(file_path=model_path)
            preprocessor=load_object(file_path=preprocessor_path)
            print("After Loading")
            data_scaled=preprocessor.transform(features)
            preds=model.predict(data_scaled)
            return preds
        
        except Exception as e:
            raise CustomException(e,sys)



class CustomData:
    def __init__(  self,
        gender: str,
        race_ethnicity: str,
        level_of_education,
        language_proficiency: str,
        training_manuals: str,
        pre_exams_average: int):

        self.gender = gender

        self.race_ethnicity = race_ethnicity

        self.level_of_education = level_of_education

        self.language_proficiency = language_proficiency

        self.training_manuals = training_manuals

        self.pre_exams_average = pre_exams_average

      

    def get_data_as_data_frame(self):
        try:
            custom_data_input_dict = {
                "gender": [self.gender],
                "race_ethnicity": [self.race_ethnicity],
                "parental_level_of_education": [self.level_of_education],
                "lunch": [self.language_proficiency],
                "test_preparation_course": [self.training_manuals],
                "reading_score": [self.pre_exams_average],
                            }

            return pd.DataFrame(custom_data_input_dict)

        except Exception as e:
            raise CustomException(e, sys)

