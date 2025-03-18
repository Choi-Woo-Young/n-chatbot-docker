import { signIn } from "@/auth";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

export function SignIn() {
  return (
    <div className="flex w-full h-screen justify-center items-center bg-nicegray-100">
      <Card className="w-[460px] p-4 border-none shadow-lg rounded-lg">
        <CardHeader>
          <CardTitle className="flex justify-center w-full">로그인</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid w-full items-center gap-4">
            <form
              action={async (formData) => {
                "use server";
                const res = await signIn("credentials", {
                  email: formData.get("email"),
                  password: formData.get("password"),
                  // redirect: true,
                  // redirectTo: "/home",
                });

                console.log('signIn res >>> ', res);
              }}
            >
              <Label>
                Email
                <Input name="email" type="email" className="m-4"/>
              </Label>
              <Label>
                Password
                <Input name="password" type="password" className="m-4 w-full"/>
              </Label>
              <Button className="m-4 w-full">Sign In</Button>
            </form>
          </div>
        </CardContent>
        <CardFooter>
        </CardFooter>
      </Card>
    </div>
  );
}
