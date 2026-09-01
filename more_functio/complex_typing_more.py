from typing import Union, List, Tuple, Dict


def f1() -> List[int]:
    return [1, 2, 3]


def f2() -> List[Union[int, str, None]]:
    return ['most', 26, None, 1]
    


t1: List[Union[float, str, bool]] = [10, True, 'hey']
t2: List[List[int]] = [[1, 2], [3, 4]]
t3: List[List[Union[int, str]]] = [[1, 2], ['hey', 4]]
t4: Tuple[int, int, str] = (10, 20, 'hey')  
t5: Tuple[int, ...] = (1, 2, 3, 4)
t6: Tuple = (1, 2.5, 'he')
t7: Dict[str, int] = {'most': 10, 'hey': 20}

