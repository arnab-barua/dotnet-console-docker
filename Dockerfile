# STAGE 1 : BUILD #####
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS Build_stage

# Set App folder as the working directory in container.
WORKDIR /App
# Copy all files inside App folder of container.
COPY . .
RUN dotnet restore
# Run publish command in App folder.
# Published files will be in App/out folder.
RUN dotnet publish -c release -o out




# STAGE : RUN #####
FROM mcr.microsoft.com/dotnet/runtime:5.0 AS Run_Stage
WORKDIR /App

# Copy all files from build stage.
COPY --from=Build_Stage /App/out/. .
ENTRYPOINT ["dotnet", "ConsoleApp.dll"]