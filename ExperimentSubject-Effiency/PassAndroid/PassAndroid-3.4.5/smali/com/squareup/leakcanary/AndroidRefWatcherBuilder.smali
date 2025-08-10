.class public final Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;
.super Lcom/squareup/leakcanary/RefWatcherBuilder;
.source "AndroidRefWatcherBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/leakcanary/RefWatcherBuilder",
        "<",
        "Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WATCH_DELAY_MILLIS:J


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->DEFAULT_WATCH_DELAY_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public buildAndInstall()Lcom/squareup/leakcanary/RefWatcher;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->build()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    .line 58
    .local v0, "refWatcher":Lcom/squareup/leakcanary/RefWatcher;
    sget-object v1, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/leakcanary/LeakCanary;->enableDisplayLeakActivity(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/squareup/leakcanary/ActivityRefWatcher;->install(Landroid/app/Application;Lcom/squareup/leakcanary/RefWatcher;)V

    .line 62
    :cond_0
    return-object v0
.end method

.method protected defaultDebuggerControl()Lcom/squareup/leakcanary/DebuggerControl;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/squareup/leakcanary/AndroidDebuggerControl;

    invoke-direct {v0}, Lcom/squareup/leakcanary/AndroidDebuggerControl;-><init>()V

    return-object v0
.end method

.method protected defaultExcludedRefs()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createAppDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v0

    return-object v0
.end method

.method protected defaultHeapDumpListener()Lcom/squareup/leakcanary/HeapDump$Listener;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/squareup/leakcanary/DisplayLeakService;

    invoke-direct {v0, v1, v2}, Lcom/squareup/leakcanary/ServiceHeapDumpListener;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected defaultHeapDumper()Lcom/squareup/leakcanary/HeapDumper;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "leakDirectoryProvider":Lcom/squareup/leakcanary/LeakDirectoryProvider;
    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;-><init>(Landroid/content/Context;Lcom/squareup/leakcanary/LeakDirectoryProvider;)V

    return-object v1
.end method

.method protected defaultWatchExecutor()Lcom/squareup/leakcanary/WatchExecutor;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/squareup/leakcanary/AndroidWatchExecutor;

    sget-wide v2, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->DEFAULT_WATCH_DELAY_MILLIS:J

    invoke-direct {v0, v2, v3}, Lcom/squareup/leakcanary/AndroidWatchExecutor;-><init>(J)V

    return-object v0
.end method

.method protected isDisabled()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/leakcanary/LeakCanary;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public listenerServiceClass(Ljava/lang/Class;)Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;)",
            "Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/leakcanary/AbstractAnalysisResultService;>;"
    new-instance v0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/squareup/leakcanary/ServiceHeapDumpListener;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->heapDumpListener(Lcom/squareup/leakcanary/HeapDump$Listener;)Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;

    return-object v0
.end method

.method public maxStoredHeapDumps(I)Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;
    .locals 3
    .param p1, "maxStoredHeapDumps"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v0, "leakDirectoryProvider":Lcom/squareup/leakcanary/LeakDirectoryProvider;
    invoke-static {v0}, Lcom/squareup/leakcanary/LeakCanary;->setDisplayLeakActivityDirectoryProvider(Lcom/squareup/leakcanary/LeakDirectoryProvider;)V

    .line 50
    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;-><init>(Landroid/content/Context;Lcom/squareup/leakcanary/LeakDirectoryProvider;)V

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->heapDumper(Lcom/squareup/leakcanary/HeapDumper;)Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;

    return-object v1
.end method

.method public watchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;
    .locals 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 36
    new-instance v0, Lcom/squareup/leakcanary/AndroidWatchExecutor;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/squareup/leakcanary/AndroidWatchExecutor;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;->watchExecutor(Lcom/squareup/leakcanary/WatchExecutor;)Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/AndroidRefWatcherBuilder;

    return-object v0
.end method
