.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ALWAYS_ON:Landroid/arch/lifecycle/LifecycleOwner;

.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.",
            "LifecycleBoundObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/arch/lifecycle/LiveData$1;

    invoke-direct {v0}, Landroid/arch/lifecycle/LiveData$1;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->ALWAYS_ON:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    .line 91
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 94
    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 100
    new-instance v0, Landroid/arch/lifecycle/LiveData$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$2;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 359
    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .line 63
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .line 63
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 63
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/LiveData;)I
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .line 63
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return v0
.end method

.method static synthetic access$302(Landroid/arch/lifecycle/LiveData;I)I
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 63
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    return-void
.end method

.method private assertMainThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .line 405
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on a background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.",
            "LifecycleBoundObserver;",
            ")V"
        }
    .end annotation

    .line 114
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 122
    :cond_0
    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    .line 124
    return-void

    .line 126
    :cond_1
    iget v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    .line 127
    return-void

    .line 129
    :cond_2
    iput v1, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    .line 131
    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>.",
            "LifecycleBoundObserver;",
            ")V"
        }
    .end annotation

    .line 135
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "initiator":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 137
    return-void

    .line 139
    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    .line 141
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 142
    if-eqz p1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 144
    const/4 p1, 0x0

    goto :goto_1

    .line 146
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    .line 147
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/arch/lifecycle/Observer<TT;>;Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 149
    iget-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_2

    .line 154
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/arch/lifecycle/Observer<TT;>;Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;>;>;"
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_4

    .line 155
    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    .line 156
    return-void

    .line 154
    :cond_4
    goto :goto_0
.end method

.method static isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z
    .locals 1
    .param p0, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .line 401
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 307
    .local v0, "data":Ljava/lang/Object;
    sget-object v1, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 309
    return-object v0

    .line 311
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getVersion()I
    .locals 1

    .line 315
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    .line 356
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 347
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 4
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p2, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    new-instance v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 193
    .local v0, "wrapper":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 194
    .local v1, "existing":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    iget-object v3, v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add the same observer with different lifecycles"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 199
    return-void

    .line 201
    :cond_3
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 202
    return-void
.end method

.method public observeForever(Landroid/arch/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 220
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    sget-object v0, Landroid/arch/lifecycle/LiveData;->ALWAYS_ON:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 221
    return-void
.end method

.method protected onActive()V
    .locals 0

    .line 326
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .line 339
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v3, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 273
    .local v1, "postTask":Z
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 274
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    if-nez v1, :cond_1

    .line 276
    return-void

    .line 278
    :cond_1
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 279
    return-void

    .line 274
    .end local v1    # "postTask":Z
    :catchall_0
    move-exception v2

    .restart local v1    # "postTask":Z
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public removeObserver(Landroid/arch/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    const-string v0, "removeObserver"

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 232
    .local v0, "removed":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    if-nez v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v1, v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    .line 237
    return-void
.end method

.method public removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;

    .line 246
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    const-string v0, "removeObservers"

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/Observer<TT;>;Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    iget-object v2, v2, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    if-ne v2, p1, :cond_0

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/Observer;

    invoke-virtual {p0, v2}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 251
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/Observer<TT;>;Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;>;"
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "setValue"

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 293
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 295
    return-void
.end method
