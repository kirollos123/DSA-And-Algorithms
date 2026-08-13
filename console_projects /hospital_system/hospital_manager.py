from patient import Patient


class HospitalManager:
    def __init__(self, specializations_cnt):
        self.specializations = [
            [] for _ in range(specializations_cnt)
        ]

        self.MAX_QUEUE = 10

        self.NORMAL = 0
        self.URGENT = 1
        self.SUPER_URGENT = 2

    def can_add_more_patients(self, specialization):
        return len(self.specializations[specialization]) < self.MAX_QUEUE

    def add_patient(self, specialization, name, status):
        spec = self.specializations[specialization]

        patient = Patient(name, status)

        spec.append(patient)
        spec.sort()

    def get_printable_patients_info(self):
        results = []

        for idx, specialization in enumerate(self.specializations):
            if specialization:
                current_patients = []

                for patient in specialization:
                    current_patients.append(str(patient))

                results.append((idx, current_patients))

        return results

    def get_next_patient(self, specialization):
        if len(self.specializations[specialization]) == 0:
            return None

        return self.specializations[specialization].pop(0)

    def remove_patient(self, specialization, name):
        spec = self.specializations[specialization]

        for idx, patient in enumerate(spec):
            if patient.name == name:
                del spec[idx]
                return True

        return False
