.class public final Lcom/squareup/leakcanary/AndroidHeapDumper;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDumper;


# instance fields
.field final context:Landroid/content/Context;

.field private final leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/squareup/leakcanary/LeakDirectoryProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leakDirectoryProvider"    # Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private cancelToast(Landroid/widget/Toast;)V
    .locals 2
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$2;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$2;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method private showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/internal/FutureResult",
            "<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public dumpHeap()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 46
    iget-object v4, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v4}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->newHeapDumpFile()Ljava/io/File;

    move-result-object v1

    .line 48
    .local v1, "heapDumpFile":Ljava/io/File;
    sget-object v4, Lcom/squareup/leakcanary/AndroidHeapDumper;->RETRY_LATER:Ljava/io/File;

    if-ne v1, v4, :cond_0

    .line 49
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->RETRY_LATER:Ljava/io/File;

    .line 68
    .end local v1    # "heapDumpFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "heapDumpFile":Ljava/io/File;
    :cond_0
    new-instance v3, Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {v3}, Lcom/squareup/leakcanary/internal/FutureResult;-><init>()V

    .line 53
    .local v3, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 55
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/leakcanary/internal/FutureResult;->wait(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    const-string v4, "Did not dump heap, too much time waiting for Toast."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->RETRY_LATER:Ljava/io/File;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    .line 62
    .local v2, "toast":Landroid/widget/Toast;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not dump heap"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->RETRY_LATER:Ljava/io/File;

    goto :goto_0
.end method
