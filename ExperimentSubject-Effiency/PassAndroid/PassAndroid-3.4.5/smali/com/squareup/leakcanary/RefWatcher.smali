.class public final Lcom/squareup/leakcanary/RefWatcher;
.super Ljava/lang/Object;
.source "RefWatcher.java"


# static fields
.field public static final DISABLED:Lcom/squareup/leakcanary/RefWatcher;


# instance fields
.field private final debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

.field private final heapDumper:Lcom/squareup/leakcanary/HeapDumper;

.field private final heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final retainedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/squareup/leakcanary/RefWatcherBuilder;

    invoke-direct {v0}, Lcom/squareup/leakcanary/RefWatcherBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->build()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/WatchExecutor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .param p1, "watchExecutor"    # Lcom/squareup/leakcanary/WatchExecutor;
    .param p2, "debuggerControl"    # Lcom/squareup/leakcanary/DebuggerControl;
    .param p3, "gcTrigger"    # Lcom/squareup/leakcanary/GcTrigger;
    .param p4, "heapDumper"    # Lcom/squareup/leakcanary/HeapDumper;
    .param p5, "heapdumpListener"    # Lcom/squareup/leakcanary/HeapDump$Listener;
    .param p6, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "watchExecutor"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/WatchExecutor;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;

    .line 52
    const-string v0, "debuggerControl"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/DebuggerControl;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    .line 53
    const-string v0, "gcTrigger"

    invoke-static {p3, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/GcTrigger;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    .line 54
    const-string v0, "heapDumper"

    invoke-static {p4, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDumper;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    .line 55
    const-string v0, "heapdumpListener"

    invoke-static {p5, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDump$Listener;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    .line 56
    const-string v0, "excludedRefs"

    invoke-static {p6, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 59
    return-void
.end method

.method private ensureGoneAsync(JLcom/squareup/leakcanary/KeyedWeakReference;)V
    .locals 3
    .param p1, "watchStartNanoTime"    # J
    .param p3, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;

    new-instance v1, Lcom/squareup/leakcanary/RefWatcher$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/squareup/leakcanary/RefWatcher$1;-><init>(Lcom/squareup/leakcanary/RefWatcher;Lcom/squareup/leakcanary/KeyedWeakReference;J)V

    invoke-interface {v0, v1}, Lcom/squareup/leakcanary/WatchExecutor;->execute(Lcom/squareup/leakcanary/Retryable;)V

    .line 98
    return-void
.end method

.method private gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z
    .locals 2
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeWeaklyReachableReferences()V
    .locals 3

    .prologue
    .line 141
    :goto_0
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/KeyedWeakReference;

    .local v0, "ref":Lcom/squareup/leakcanary/KeyedWeakReference;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v2, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method ensureGone(Lcom/squareup/leakcanary/KeyedWeakReference;J)Lcom/squareup/leakcanary/Retryable$Result;
    .locals 18
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;
    .param p2, "watchStartNanoTime"    # J

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 103
    .local v14, "gcStartNanoTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v6, v14, p2

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 105
    .local v8, "watchDurationMs":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    invoke-interface {v2}, Lcom/squareup/leakcanary/DebuggerControl;->isDebuggerAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lcom/squareup/leakcanary/Retryable$Result;->RETRY:Lcom/squareup/leakcanary/Retryable$Result;

    .line 130
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    sget-object v2, Lcom/squareup/leakcanary/Retryable$Result;->DONE:Lcom/squareup/leakcanary/Retryable$Result;

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    invoke-interface {v2}, Lcom/squareup/leakcanary/GcTrigger;->runGc()V

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 116
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 118
    .local v16, "startDumpHeap":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v6, v16, v14

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 120
    .local v10, "gcDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    invoke-interface {v2}, Lcom/squareup/leakcanary/HeapDumper;->dumpHeap()Ljava/io/File;

    move-result-object v4

    .line 121
    .local v4, "heapDumpFile":Ljava/io/File;
    sget-object v2, Lcom/squareup/leakcanary/HeapDumper;->RETRY_LATER:Ljava/io/File;

    if-ne v4, v2, :cond_2

    .line 123
    sget-object v2, Lcom/squareup/leakcanary/Retryable$Result;->RETRY:Lcom/squareup/leakcanary/Retryable$Result;

    goto :goto_0

    .line 125
    :cond_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 126
    .local v12, "heapDumpDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    new-instance v3, Lcom/squareup/leakcanary/HeapDump;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/leakcanary/RefWatcher;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct/range {v3 .. v13}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    invoke-interface {v2, v3}, Lcom/squareup/leakcanary/HeapDump$Listener;->analyze(Lcom/squareup/leakcanary/HeapDump;)V

    .line 130
    .end local v4    # "heapDumpFile":Ljava/io/File;
    .end local v10    # "gcDurationMs":J
    .end local v12    # "heapDumpDurationMs":J
    .end local v16    # "startDumpHeap":J
    :cond_3
    sget-object v2, Lcom/squareup/leakcanary/Retryable$Result;->DONE:Lcom/squareup/leakcanary/Retryable$Result;

    goto :goto_0
.end method

.method public watch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "watchedReference"    # Ljava/lang/Object;

    .prologue
    .line 67
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public watch(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "watchedReference"    # Ljava/lang/Object;
    .param p2, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v4, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    if-ne p0, v4, :cond_0

    .line 90
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v4, "watchedReference"

    invoke-static {p1, v4}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v4, "referenceName"

    invoke-static {p2, v4}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 84
    .local v2, "watchStartNanoTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/squareup/leakcanary/KeyedWeakReference;

    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v0, p2, v4}, Lcom/squareup/leakcanary/KeyedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    .line 89
    .local v1, "reference":Lcom/squareup/leakcanary/KeyedWeakReference;
    invoke-direct {p0, v2, v3, v1}, Lcom/squareup/leakcanary/RefWatcher;->ensureGoneAsync(JLcom/squareup/leakcanary/KeyedWeakReference;)V

    goto :goto_0
.end method
