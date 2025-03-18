interface SelfServiceButtonType {
  type: string;
  name: string;
  value: string;
  previous_query?: string;
}

interface SelfServiceTypeType {
  type: string;
  previous_query?: string;
  items: SelfServiceButtonType[];
}
