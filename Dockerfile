FROM mcr.microsoft.com/dotnet/sdk:5.0

# Copy all files inside App folder of container.
COPY . App/

# Set App folder as the working directory in container.
WORKDIR /App

# Run publish command in App folder.
RUN dotnet publish -c release -o out
WORKDIR /App/out
ENTRYPOINT ["dotnet", "ConsoleApp.dll"]