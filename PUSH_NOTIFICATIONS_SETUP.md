# Push Notifications Setup Guide

This guide will help you set up push notifications for your Flutter app using Firebase Cloud Messaging (FCM).

## Prerequisites

- Flutter SDK installed
- Firebase project created
- Android Studio / Xcode for platform-specific setup

## Step 1: Firebase Project Setup

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project or select an existing one
3. Enable Cloud Messaging API
4. Add your Android and iOS apps to the project

## Step 2: Android Setup

### 2.1 Download google-services.json
1. In Firebase Console, go to Project Settings
2. Add Android app with your package name (e.g., `com.example.meenmanam`)
3. Download `google-services.json`
4. Place it in `android/app/` directory

### 2.2 Update build.gradle files

**android/build.gradle:**
```gradle
buildscript {
    dependencies {
        classpath 'com.google.gms:google-services:4.3.15'
    }
}
```

**android/app/build.gradle:**
```gradle
apply plugin: 'com.google.gms.google-services'

dependencies {
    implementation platform('com.google.firebase:firebase-bom:32.7.0')
    implementation 'com.google.firebase:firebase-messaging'
}
```

### 2.3 Update AndroidManifest.xml
The manifest has already been updated with:
- Required permissions
- FCM service
- Default notification icon and color

## Step 3: iOS Setup

### 3.1 Download GoogleService-Info.plist
1. In Firebase Console, add iOS app with your bundle ID
2. Download `GoogleService-Info.plist`
3. Add it to your iOS project using Xcode

### 3.2 Update Podfile
```ruby
target 'Runner' do
  use_frameworks!
  use_modular_headers!
  
  # Add this line
  pod 'Firebase/Messaging'
end
```

### 3.3 Update Info.plist
The Info.plist has already been updated with:
- Background modes for remote notifications
- Required permissions

## Step 4: Flutter Dependencies

The following dependencies have been added to `pubspec.yaml`:
```yaml
dependencies:
  firebase_core: ^3.6.0
  firebase_messaging: ^15.1.3
  flutter_local_notifications: ^18.0.1
```

Run `flutter pub get` to install dependencies.

## Step 5: Code Implementation

### 5.1 Notification Service
The `NotificationService` class handles:
- Firebase initialization
- Permission requests
- FCM token management
- Message handling
- Local notifications

### 5.2 Notification Store
The `NotificationStore` class provides:
- State management with MobX
- Topic subscriptions
- Error handling
- Loading states

### 5.3 Notification Settings Screen
A complete UI for:
- Managing notification preferences
- Topic subscriptions
- Testing notifications
- Viewing FCM token

## Step 6: Testing

### 6.1 Local Testing
1. Run the app
2. Navigate to Profile → Notification Settings
3. Use "Send Test" button to verify local notifications

### 6.2 FCM Testing
1. Get FCM token from the notification settings screen
2. Use Firebase Console to send test messages
3. Verify notifications are received

## Step 7: Server Integration

### 7.1 FCM API
Send notifications using FCM HTTP v1 API:
```bash
POST https://fcm.googleapis.com/v1/projects/YOUR_PROJECT_ID/messages:send
```

### 7.2 Message Format
```json
{
  "message": {
    "token": "FCM_TOKEN_HERE",
    "notification": {
      "title": "Notification Title",
      "body": "Notification Body"
    },
    "data": {
      "type": "order_update",
      "order_id": "12345"
    }
  }
}
```

### 7.3 Topic Messaging
Send to topics:
```json
{
  "message": {
    "topic": "promotions",
    "notification": {
      "title": "Special Offer!",
      "body": "Get 20% off today"
    }
  }
}
```

## Step 8: Advanced Features

### 8.1 Custom Notification Icons
- Place custom icons in `android/app/src/main/res/drawable/`
- Update `AndroidManifest.xml` with icon name

### 8.2 Rich Notifications
- Add images, actions, and custom layouts
- Use `flutter_local_notifications` for advanced features

### 8.3 Background Message Handling
- Implement background message handlers
- Handle data-only messages

## Troubleshooting

### Common Issues

1. **Notifications not showing on Android**
   - Check notification permissions
   - Verify `google-services.json` is in correct location
   - Check notification channels

2. **iOS notifications not working**
   - Verify APNs certificate
   - Check background modes in Info.plist
   - Test on physical device

3. **FCM token not generated**
   - Check Firebase initialization
   - Verify internet connection
   - Check console logs for errors

### Debug Commands
```bash
# Check Firebase configuration
flutter doctor

# Clean and rebuild
flutter clean
flutter pub get
flutter run
```

## Security Considerations

1. **FCM Token Storage**
   - Store tokens securely
   - Implement token refresh logic
   - Validate tokens on server

2. **Message Validation**
   - Validate message payloads
   - Implement rate limiting
   - Use authentication for sensitive notifications

3. **Privacy Compliance**
   - Follow GDPR/CCPA requirements
   - Implement opt-out mechanisms
   - Document data usage

## Support

For additional help:
- [Firebase Documentation](https://firebase.google.com/docs/cloud-messaging)
- [Flutter Firebase Plugin](https://pub.dev/packages/firebase_messaging)
- [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)

## Next Steps

1. Set up Firebase project and download configuration files
2. Test local notifications
3. Implement server-side notification sending
4. Add custom notification handling logic
5. Implement notification analytics and tracking 