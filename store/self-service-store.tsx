import { create } from "zustand";

interface SelfServiceStore {
    action: SelfServiceButtonType;
    updateActions: (param1: string, param2: string, param3: string, param4: string) => void;
}
  
export const useSelfServiceStore = create<SelfServiceStore>((set) => ({
    action: {
        type: '',
        name: '',
        value: '',
        previous_query: '',
    },
    updateActions: (param1:string, param2: string, param3: string, param4:string) => {
        set({
            action: {
                type: param1,
                name: param2,
                value: param3,
                previous_query:param4,
            },
        });
    },
}));
