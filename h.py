import instaloader

def download_profile_data(username):
    L = instaloader.Instaloader()

    # Replace with your Instagram credentials
    username_login = '_shaikh.moosa__'  # Your Instagram username
    password_login = '1Nasirahmad#'      # Your Instagram password

    # Login to Instagram
    L.login(username_login, password_login)

    try:
        profile = instaloader.Profile.from_username(L.context, username)
    except instaloader.exceptions.ProfileNotFoundException:
        print("Profile not found.")
        return

    # Profile information
    print(f"Profile: {profile.username}")
    print(f"Full Name: {profile.full_name}")
    print(f"Biography: {profile.biography}")
    print(f"Followers: {profile.followers}")
    print(f"Following: {profile.followees}")
    print(f"Posts: {profile.mediacount}")

    # Get followers
    print("\nFollowers:")
    followers = [f.username for f in profile.get_followers()]
    for follower in followers:
        print(f"- {follower}")

    # Get following
    print("\nFollowing:")
    following = [f.username for f in profile.get_followees()]
    for followee in following:
        print(f"- {followee}")

def main():
    username = 'the_perfect_ashhhh'  # Replace with the Instagram username you want to analyze
    print(f"Downloading data for profile: {username}")
    download_profile_data(username)

if __name__ == '__main__':
    main()
