.class public Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
.super Ljava/lang/Object;
.source "TestListener.java"


# instance fields
.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private onEndReceiver:Landroid/content/BroadcastReceiver;

.field private onEntryReceiver:Landroid/content/BroadcastReceiver;

.field private onLogReceiver:Landroid/content/BroadcastReceiver;

.field private testId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/content/Context;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onLogReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEntryReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEndReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 33
    iput-object p1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->testId:Ljava/lang/Integer;

    .line 34
    return-void
.end method


# virtual methods
.method public clear_all()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_log()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 109
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_entry()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 110
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_end()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 111
    return-void
.end method

.method public clear_on_end()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEndReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEndReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    return-object p0
.end method

.method public clear_on_entry()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEntryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEntryReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    return-object p0
.end method

.method public clear_on_log()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onLogReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onLogReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    return-object p0
.end method

.method public on_end(Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 3
    .param p1, "cb"    # Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;

    .line 68
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_end()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->testId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/on_end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;

    invoke-direct {v1, p0, p1}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$3;-><init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/nettests/TestCompleteCallback;)V

    iput-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEndReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    return-object p0
.end method

.method public on_entry(Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 3
    .param p1, "cb"    # Lorg/openobservatory/measurement_kit/nettests/EntryCallback;

    .line 53
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_entry()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->testId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/on_entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;

    invoke-direct {v1, p0, p1}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$2;-><init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/nettests/EntryCallback;)V

    iput-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onEntryReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    return-object p0
.end method

.method public on_log(Lorg/openobservatory/measurement_kit/common/LogCallback;)Lorg/openobservatory/measurement_kit/android/experimental/TestListener;
    .locals 3
    .param p1, "cb"    # Lorg/openobservatory/measurement_kit/common/LogCallback;

    .line 37
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->clear_on_log()Lorg/openobservatory/measurement_kit/android/experimental/TestListener;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->testId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/on_log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;

    invoke-direct {v1, p0, p1}, Lorg/openobservatory/measurement_kit/android/experimental/TestListener$1;-><init>(Lorg/openobservatory/measurement_kit/android/experimental/TestListener;Lorg/openobservatory/measurement_kit/common/LogCallback;)V

    iput-object v1, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->onLogReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iget-object v2, p0, Lorg/openobservatory/measurement_kit/android/experimental/TestListener;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    return-object p0
.end method
