.class public Lcom/squareup/leakcanary/RefWatcherBuilder;
.super Ljava/lang/Object;
.source "RefWatcherBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/leakcanary/RefWatcherBuilder",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

.field private excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

.field private heapDumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

.field private heapDumper:Lcom/squareup/leakcanary/HeapDumper;

.field private watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/squareup/leakcanary/RefWatcher;
    .locals 7

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    .line 88
    :goto_0
    return-object v0

    .line 58
    :cond_0
    iget-object v6, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 59
    .local v6, "excludedRefs":Lcom/squareup/leakcanary/ExcludedRefs;
    if-nez v6, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultExcludedRefs()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v6

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->heapDumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    .line 64
    .local v5, "heapDumpListener":Lcom/squareup/leakcanary/HeapDump$Listener;
    if-nez v5, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultHeapDumpListener()Lcom/squareup/leakcanary/HeapDump$Listener;

    move-result-object v5

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    .line 69
    .local v2, "debuggerControl":Lcom/squareup/leakcanary/DebuggerControl;
    if-nez v2, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultDebuggerControl()Lcom/squareup/leakcanary/DebuggerControl;

    move-result-object v2

    .line 73
    :cond_3
    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    .line 74
    .local v4, "heapDumper":Lcom/squareup/leakcanary/HeapDumper;
    if-nez v4, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultHeapDumper()Lcom/squareup/leakcanary/HeapDumper;

    move-result-object v4

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;

    .line 79
    .local v1, "watchExecutor":Lcom/squareup/leakcanary/WatchExecutor;
    if-nez v1, :cond_5

    .line 80
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultWatchExecutor()Lcom/squareup/leakcanary/WatchExecutor;

    move-result-object v1

    .line 83
    :cond_5
    iget-object v3, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    .line 84
    .local v3, "gcTrigger":Lcom/squareup/leakcanary/GcTrigger;
    if-nez v3, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->defaultGcTrigger()Lcom/squareup/leakcanary/GcTrigger;

    move-result-object v3

    .line 88
    :cond_6
    new-instance v0, Lcom/squareup/leakcanary/RefWatcher;

    invoke-direct/range {v0 .. v6}, Lcom/squareup/leakcanary/RefWatcher;-><init>(Lcom/squareup/leakcanary/WatchExecutor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)V

    goto :goto_0
.end method

.method public final debuggerControl(Lcom/squareup/leakcanary/DebuggerControl;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "debuggerControl"    # Lcom/squareup/leakcanary/DebuggerControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/DebuggerControl;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    .line 37
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected defaultDebuggerControl()Lcom/squareup/leakcanary/DebuggerControl;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    sget-object v0, Lcom/squareup/leakcanary/DebuggerControl;->NONE:Lcom/squareup/leakcanary/DebuggerControl;

    return-object v0
.end method

.method protected defaultExcludedRefs()Lcom/squareup/leakcanary/ExcludedRefs;
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    invoke-static {}, Lcom/squareup/leakcanary/ExcludedRefs;->builder()Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v0

    return-object v0
.end method

.method protected defaultGcTrigger()Lcom/squareup/leakcanary/GcTrigger;
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    sget-object v0, Lcom/squareup/leakcanary/GcTrigger;->DEFAULT:Lcom/squareup/leakcanary/GcTrigger;

    return-object v0
.end method

.method protected defaultHeapDumpListener()Lcom/squareup/leakcanary/HeapDump$Listener;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    sget-object v0, Lcom/squareup/leakcanary/HeapDump$Listener;->NONE:Lcom/squareup/leakcanary/HeapDump$Listener;

    return-object v0
.end method

.method protected defaultHeapDumper()Lcom/squareup/leakcanary/HeapDumper;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    sget-object v0, Lcom/squareup/leakcanary/HeapDumper;->NONE:Lcom/squareup/leakcanary/HeapDumper;

    return-object v0
.end method

.method protected defaultWatchExecutor()Lcom/squareup/leakcanary/WatchExecutor;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    sget-object v0, Lcom/squareup/leakcanary/WatchExecutor;->NONE:Lcom/squareup/leakcanary/WatchExecutor;

    return-object v0
.end method

.method public final excludedRefs(Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/ExcludedRefs;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 25
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final gcTrigger(Lcom/squareup/leakcanary/GcTrigger;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "gcTrigger"    # Lcom/squareup/leakcanary/GcTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/GcTrigger;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    .line 49
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final heapDumpListener(Lcom/squareup/leakcanary/HeapDump$Listener;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "heapDumpListener"    # Lcom/squareup/leakcanary/HeapDump$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/HeapDump$Listener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->heapDumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    .line 19
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final heapDumper(Lcom/squareup/leakcanary/HeapDumper;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "heapDumper"    # Lcom/squareup/leakcanary/HeapDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/HeapDumper;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    .line 31
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected isDisabled()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final self()Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    return-object p0
.end method

.method public final watchExecutor(Lcom/squareup/leakcanary/WatchExecutor;)Lcom/squareup/leakcanary/RefWatcherBuilder;
    .locals 1
    .param p1, "watchExecutor"    # Lcom/squareup/leakcanary/WatchExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/WatchExecutor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/squareup/leakcanary/RefWatcherBuilder;, "Lcom/squareup/leakcanary/RefWatcherBuilder<TT;>;"
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcherBuilder;->watchExecutor:Lcom/squareup/leakcanary/WatchExecutor;

    .line 43
    invoke-virtual {p0}, Lcom/squareup/leakcanary/RefWatcherBuilder;->self()Lcom/squareup/leakcanary/RefWatcherBuilder;

    move-result-object v0

    return-object v0
.end method
