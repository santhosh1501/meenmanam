import 'package:flutter/foundation.dart';
import 'package:meenmanam/service/notification_service.dart';

class NotificationStore extends ChangeNotifier {
  final NotificationService _notificationService = NotificationService();

  bool _isInitialized = false;
  String? _fcmToken;
  bool _isSubscribed = false;
  List<String> _subscribedTopics = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  bool get isInitialized => _isInitialized;
  String? get fcmToken => _fcmToken;
  bool get isSubscribed => _isSubscribed;
  List<String> get subscribedTopics => List.unmodifiable(_subscribedTopics);
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasError => _error != null;

  Future<void> initializeNotifications() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _notificationService.initialize();

      _isInitialized = _notificationService.isInitialized;
      _fcmToken = _notificationService.fcmToken;

      debugPrint('Notifications initialized: $_isInitialized');
    } catch (e) {
      _error = 'Failed to initialize notifications: $e';
      debugPrint('Error initializing notifications: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> subscribeToTopic(String topic) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _notificationService.subscribeToTopic(topic);

      if (!_subscribedTopics.contains(topic)) {
        _subscribedTopics.add(topic);
      }

      _isSubscribed = true;
      debugPrint('Subscribed to topic: $topic');
    } catch (e) {
      _error = 'Failed to subscribe to topic: $e';
      debugPrint('Error subscribing to topic: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      await _notificationService.unsubscribeFromTopic(topic);

      _subscribedTopics.remove(topic);

      if (_subscribedTopics.isEmpty) {
        _isSubscribed = false;
      }

      debugPrint('Unsubscribed from topic: $topic');
    } catch (e) {
      _error = 'Failed to unsubscribe from topic: $e';
      debugPrint('Error unsubscribing from topic: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    try {
      _error = null;
      await _notificationService.showLocalNotification(
        title: title,
        body: body,
        payload: payload,
      );
      debugPrint('Local notification sent: $title');
    } catch (e) {
      _error = 'Failed to show local notification: $e';
      debugPrint('Error showing local notification: $e');
      notifyListeners();
    }
  }

  Future<void> clearAllNotifications() async {
    try {
      _error = null;
      await _notificationService.clearAllNotifications();
      debugPrint('All notifications cleared');
    } catch (e) {
      _error = 'Failed to clear notifications: $e';
      debugPrint('Error clearing notifications: $e');
      notifyListeners();
    }
  }

  Future<void> refreshFCMToken() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      // Re-initialize to get fresh token
      await _notificationService.initialize();
      _fcmToken = _notificationService.fcmToken;

      debugPrint('FCM token refreshed: $_fcmToken');
    } catch (e) {
      _error = 'Failed to refresh FCM token: $e';
      debugPrint('Error refreshing FCM token: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }

  void reset() {
    _isInitialized = false;
    _fcmToken = null;
    _isSubscribed = false;
    _subscribedTopics.clear();
    _isLoading = false;
    _error = null;
    notifyListeners();
  }

  // Getter for notification service
  NotificationService get notificationService => _notificationService;
}
