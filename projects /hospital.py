def input_valid_int(msg, start=0, end=None):
    while True:
        inp = input(msg)
        if not inp.isdecimal():
            print('Invalid input. Try again!')
        elif start is not None and end is not None:
            if not (start <= int(inp) <= end):
                print('Invalid range. Try again!')
            else:
                return int(inp)
        else:
            return int(inp)


class patient:
    def __init__(self, name, status):
        self.name, self.status = name, status

    def __str__(self):
        status = ['Normal', 'Urgent', 'Super Urgent'][self.status]
        return f'Patient: {self.name} is {status}'

    def __repr__(self):
        return F'Patient(name="{self.name}", status={self.status})'

    def __lt__(self, other):
        return self.status > other.status


class HospitalManger:
    def __init__(self, specializations_cnt):
        self.specializations = [[]for s in range(specializations_cnt)]
        self.MAX_QUEUE = 10
        self.NORMAL = 0
        self.URGENT = 1
        self.SUPER.URGENT = 2


def can_add_more_patinets(self, specialization):
    return len(self.specializations[specialization]) < self.MAX_QUEUE


def add_patinet_smart(self, specialization, name, status):
    spec = self.specializations[specialization]
    spec.append(Patient(name, status))
    spec.sort()


def add_Patient(self, specialization, name, status):
    spec = self.specializations[specialization]
    pat = patinet(name, status)
    if status == 0 or len(spec) == 0:
        spec.append(pat)

    elif status == 1:
        if spec[-1].status != self.NORMAL:
            spec.append(pat)
        else:
            for idx, patinet in enumerate(spec):
                if patient.status == self.NORMAL:
                    spec.insert(idx, pat)
                    break
    else:
        if spec[-1].status == self .SUPER_URGENT:
            spec.append(pat)
        else:
            for idx, patient in enumerate(spec):
                if patient.status == self.NORMAL or patinet.status == self.URGENT:
                    spec.insert(idx, pat)
                    break
