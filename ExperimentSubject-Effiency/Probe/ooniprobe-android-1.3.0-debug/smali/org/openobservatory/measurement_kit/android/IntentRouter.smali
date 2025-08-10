.class public Lorg/openobservatory/measurement_kit/android/IntentRouter;
.super Ljava/lang/Object;
.source "IntentRouter.java"


# static fields
.field private static singleton:Lorg/openobservatory/measurement_kit/android/IntentRouter;


# instance fields
.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private routes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->routes:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lorg/openobservatory/measurement_kit/android/IntentRouter;

    monitor-enter v0

    .line 19
    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 22
    sget-object v1, Lorg/openobservatory/measurement_kit/android/IntentRouter;->singleton:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lorg/openobservatory/measurement_kit/android/IntentRouter;

    invoke-direct {v1, p0}, Lorg/openobservatory/measurement_kit/android/IntentRouter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/openobservatory/measurement_kit/android/IntentRouter;->singleton:Lorg/openobservatory/measurement_kit/android/IntentRouter;

    .line 25
    :cond_0
    sget-object v1, Lorg/openobservatory/measurement_kit/android/IntentRouter;->singleton:Lorg/openobservatory/measurement_kit/android/IntentRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected context type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private make_key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "receiver_id"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public emit_intent(Landroid/content/Intent;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 36
    return-object p0
.end method

.method public emit_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 45
    return-object p0
.end method

.method public declared-synchronized register_handler(Ljava/lang/String;Ljava/lang/String;Lorg/openobservatory/measurement_kit/android/IntentCallback;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .locals 4
    .param p1, "receiver_id"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "cb"    # Lorg/openobservatory/measurement_kit/android/IntentCallback;

    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lorg/openobservatory/measurement_kit/android/IntentRouter$1;

    invoke-direct {v1, p0, p3}, Lorg/openobservatory/measurement_kit/android/IntentRouter$1;-><init>(Lorg/openobservatory/measurement_kit/android/IntentRouter;Lorg/openobservatory/measurement_kit/android/IntentCallback;)V

    .line 59
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->routes:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->make_key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-object p0

    .line 50
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .end local p1    # "receiver_id":Ljava/lang/String;
    .end local p2    # "event":Ljava/lang/String;
    .end local p3    # "cb":Lorg/openobservatory/measurement_kit/android/IntentCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister_handler(Ljava/lang/String;Ljava/lang/String;)Lorg/openobservatory/measurement_kit/android/IntentRouter;
    .locals 3
    .param p1, "receiver_id"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/openobservatory/measurement_kit/android/IntentRouter;->make_key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->routes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->routes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 69
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/IntentRouter;->routes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/android/IntentRouter;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 65
    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "receiver_id":Ljava/lang/String;
    .end local p2    # "event":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
