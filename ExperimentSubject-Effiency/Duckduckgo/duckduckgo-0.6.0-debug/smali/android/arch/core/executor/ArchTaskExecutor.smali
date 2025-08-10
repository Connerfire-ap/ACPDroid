.class public Landroid/arch/core/executor/ArchTaskExecutor;
.super Landroid/arch/core/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

.field private mDelegate:Landroid/arch/core/executor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/arch/core/executor/ArchTaskExecutor$1;

    invoke-direct {v0}, Landroid/arch/core/executor/ArchTaskExecutor$1;-><init>()V

    sput-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Landroid/arch/core/executor/ArchTaskExecutor$2;

    invoke-direct {v0}, Landroid/arch/core/executor/ArchTaskExecutor$2;-><init>()V

    sput-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/arch/core/executor/TaskExecutor;-><init>()V

    .line 58
    new-instance v0, Landroid/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    .line 59
    iput-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    .line 60
    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 110
    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getInstance()Landroid/arch/core/executor/ArchTaskExecutor;
    .locals 2

    .line 68
    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 71
    :cond_0
    const-class v0, Landroid/arch/core/executor/ArchTaskExecutor;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Landroid/arch/core/executor/ArchTaskExecutor;

    invoke-direct {v1}, Landroid/arch/core/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    .line 75
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sInstance:Landroid/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 105
    sget-object v0, Landroid/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 95
    iget-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0}, Landroid/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 100
    iget-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public setDelegate(Landroid/arch/core/executor/TaskExecutor;)V
    .locals 1
    .param p1, "taskExecutor"    # Landroid/arch/core/executor/TaskExecutor;

    .line 90
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    .line 91
    return-void
.end method
