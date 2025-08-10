.class public final Lcom/squareup/leakcanary/AndroidWatchExecutor;
.super Ljava/lang/Object;
.source "AndroidWatchExecutor.java"

# interfaces
.implements Lcom/squareup/leakcanary/WatchExecutor;


# static fields
.field static final LEAK_CANARY_THREAD_NAME:Ljava/lang/String; = "LeakCanary-Heap-Dump"


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final initialDelayMillis:J

.field private final mainHandler:Landroid/os/Handler;

.field private final maxBackoffFactor:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "initialDelayMillis"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->mainHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LeakCanary-Heap-Dump"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->backgroundHandler:Landroid/os/Handler;

    .line 44
    iput-wide p1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->initialDelayMillis:J

    .line 45
    const-wide v2, 0x7fffffffffffffffL

    div-long/2addr v2, p1

    iput-wide v2, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->maxBackoffFactor:J

    .line 46
    return-void
.end method


# virtual methods
.method public execute(Lcom/squareup/leakcanary/Retryable;)V
    .locals 3
    .param p1, "retryable"    # Lcom/squareup/leakcanary/Retryable;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, p1, v2}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->waitForIdle(Lcom/squareup/leakcanary/Retryable;I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->postWaitForIdle(Lcom/squareup/leakcanary/Retryable;I)V

    goto :goto_0
.end method

.method postToBackgroundWithDelay(Lcom/squareup/leakcanary/Retryable;I)V
    .locals 8
    .param p1, "retryable"    # Lcom/squareup/leakcanary/Retryable;
    .param p2, "failedAttempts"    # I

    .prologue
    .line 75
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->maxBackoffFactor:J

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-long v2, v4

    .line 76
    .local v2, "exponentialBackoffFactor":J
    iget-wide v4, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->initialDelayMillis:J

    mul-long v0, v4, v2

    .line 77
    .local v0, "delayMillis":J
    iget-object v4, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->backgroundHandler:Landroid/os/Handler;

    new-instance v5, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;

    invoke-direct {v5, p0, p1, p2}, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;-><init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Lcom/squareup/leakcanary/Retryable;I)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method postWaitForIdle(Lcom/squareup/leakcanary/Retryable;I)V
    .locals 2
    .param p1, "retryable"    # Lcom/squareup/leakcanary/Retryable;
    .param p2, "failedAttempts"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;-><init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Lcom/squareup/leakcanary/Retryable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method waitForIdle(Lcom/squareup/leakcanary/Retryable;I)V
    .locals 2
    .param p1, "retryable"    # Lcom/squareup/leakcanary/Retryable;
    .param p2, "failedAttempts"    # I

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;-><init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Lcom/squareup/leakcanary/Retryable;I)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 72
    return-void
.end method
