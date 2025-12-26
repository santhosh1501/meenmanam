import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:meenmanam/store/notification_store.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/themes/fonts.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  void initState() {
    super.initState();
    // Initialize notifications when the screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final store = Provider.of<NotificationStore>(context, listen: false);
      store.initializeNotifications();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification Settings',
          style: TextStyle(
            fontFamily: AppFonts.semiBold,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Consumer<NotificationStore>(
        builder: (context, store, child) {
          if (store.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notification Status Card
                _buildStatusCard(store),
                const SizedBox(height: 24),

                // Topic Subscriptions
                _buildTopicSubscriptions(store),
                const SizedBox(height: 24),

                // Test Notifications
                _buildTestNotifications(store),
                const SizedBox(height: 24),

                // Error Display
                if (store.hasError) _buildErrorCard(store),

                // FCM Token Display (for debugging)
                if (store.fcmToken != null) _buildTokenCard(store),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatusCard(NotificationStore store) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  store.isInitialized
                      ? Icons.notifications_active
                      : Icons.notifications_off,
                  color: store.isInitialized ? AppColors.green : AppColors.red,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Notification Status',
                  style: TextStyle(
                    fontFamily: AppFonts.semiBold,
                    fontSize: 18,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              store.isInitialized
                  ? 'Notifications are enabled and working properly.'
                  : 'Notifications are not initialized. Please check your settings.',
              style: TextStyle(
                fontFamily: AppFonts.regular,
                fontSize: 14,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        store.isInitialized
                            ? null
                            : () => store.initializeNotifications(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Initialize Notifications',
                      style: TextStyle(
                        fontFamily: AppFonts.regular,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed:
                        store.isInitialized
                            ? () => store.refreshFCMToken()
                            : null,
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Refresh Token',
                      style: TextStyle(
                        fontFamily: AppFonts.regular,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopicSubscriptions(NotificationStore store) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Topic Subscriptions',
              style: TextStyle(
                fontFamily: AppFonts.semiBold,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),

            // Predefined topics
            _buildTopicTile(store, 'promotions', 'Promotions & Offers'),
            _buildTopicTile(store, 'orders', 'Order Updates'),
            _buildTopicTile(store, 'news', 'News & Updates'),
            _buildTopicTile(store, 'weather', 'Weather Alerts'),

            const SizedBox(height: 16),

            // Custom topic subscription
            _buildCustomTopicSubscription(store),
          ],
        ),
      ),
    );
  }

  Widget _buildTopicTile(NotificationStore store, String topic, String title) {
    final isSubscribed = store.subscribedTopics.contains(topic);

    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontFamily: AppFonts.regular, color: AppColors.black),
      ),
      subtitle: Text(
        isSubscribed ? 'Subscribed' : 'Not subscribed',
        style: TextStyle(
          fontFamily: AppFonts.regular,
          color: isSubscribed ? AppColors.green : AppColors.grey,
        ),
      ),
      trailing: Switch(
        value: isSubscribed,
        onChanged: (value) {
          if (value) {
            store.subscribeToTopic(topic);
          } else {
            store.unsubscribeFromTopic(topic);
          }
        },
        activeColor: AppColors.primary,
      ),
    );
  }

  Widget _buildCustomTopicSubscription(NotificationStore store) {
    final TextEditingController topicController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Subscribe to Custom Topic',
          style: TextStyle(
            fontFamily: AppFonts.regular,
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: topicController,
                decoration: InputDecoration(
                  hintText: 'Enter topic name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () {
                if (topicController.text.isNotEmpty) {
                  store.subscribeToTopic(topicController.text);
                  topicController.clear();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Subscribe',
                style: TextStyle(
                  fontFamily: AppFonts.regular,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTestNotifications(NotificationStore store) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Test Notifications',
              style: TextStyle(
                fontFamily: AppFonts.semiBold,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Send test notifications to verify everything is working properly.',
              style: TextStyle(
                fontFamily: AppFonts.regular,
                fontSize: 14,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        () => store.showLocalNotification(
                          title: 'Test Notification',
                          body:
                              'This is a test notification to verify the system is working.',
                          payload:
                              '{"type": "test", "message": "Test notification"}',
                        ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Send Test',
                      style: TextStyle(
                        fontFamily: AppFonts.regular,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => store.clearAllNotifications(),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Clear All',
                      style: TextStyle(
                        fontFamily: AppFonts.regular,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorCard(NotificationStore store) {
    return Card(
      elevation: 2,
      color: AppColors.red.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.error_outline, color: AppColors.red, size: 24),
                const SizedBox(width: 12),
                Text(
                  'Error',
                  style: TextStyle(
                    fontFamily: AppFonts.semiBold,
                    fontSize: 18,
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              store.error!,
              style: TextStyle(
                fontFamily: AppFonts.regular,
                fontSize: 14,
                color: AppColors.red,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => store.clearError(),
                  child: Text(
                    'Dismiss',
                    style: TextStyle(
                      fontFamily: AppFonts.regular,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTokenCard(NotificationStore store) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'FCM Token (Debug)',
              style: TextStyle(
                fontFamily: AppFonts.semiBold,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Token:',
                    style: TextStyle(
                      fontFamily: AppFonts.regular,
                      fontSize: 12,
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  SelectableText(
                    store.fcmToken!,
                    style: TextStyle(
                      fontFamily: AppFonts.regular,
                      fontSize: 10,
                      color: AppColors.black,
                      fontFamilyFallback: ['monospace'],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'This token is used by your server to send push notifications to this device.',
              style: TextStyle(
                fontFamily: AppFonts.regular,
                fontSize: 12,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
