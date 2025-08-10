.class final Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;
.super Ljava/lang/Object;
.source "LiveDataReactiveStreams.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LiveDataSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscription;",
        "Landroid/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile mCanceled:Z

.field mLatest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

.field final mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field mObserving:Z

.field mRequested:J

.field final mSubscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .param p2, "lifecycle"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "liveData":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mSubscriber:Lorg/reactivestreams/Subscriber;

    .line 89
    iput-object p2, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

    .line 90
    iput-object p3, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLiveData:Landroid/arch/lifecycle/LiveData;

    .line 91
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 148
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription<TT;>;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    .line 152
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    new-instance v1, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$2;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$2;-><init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;)V

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-wide v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mSubscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 101
    iget-wide v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 102
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mRequested:J

    goto :goto_0

    .line 105
    :cond_1
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mLatest:Ljava/lang/Object;

    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 2
    .param p1, "n"    # J

    .line 111
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription<TT;>;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    new-instance v1, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription$1;-><init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;J)V

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
