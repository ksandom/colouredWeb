# Adding support for a new app

Adding support for a new app is now really easy. Simply 

1. run
    ```bash
    ./bin/createApp
    ```
1. Enter the app name. (Normal file assumptions apply. I recommend being conservative on this name.)
1. Now run
    ```bash
    ./bin/checkAppStates
    ```
    This will give you a list of things you still need to complete to make it work. Mostly these are a matter of checking that they are right for your situation.
    Re-run this check as many times as you need to get it into a passing state.
1. When you run
    ```bash
    ./bin/lsApps
    ```
    You should see your app support listed, and it's details should be correct. Pay particular note to whether the state is healthy for this new app support. If it's not, you need to run `./bin/checkAppStates` again, and follow the issues it lists.
