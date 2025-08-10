.class Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;
.super Landroid/arch/lifecycle/LiveData;
.source "LiveDataReactiveStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveDataReactiveStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublisherLiveData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPublisher:Lorg/reactivestreams/Publisher;

.field final mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<",
            "TT;>.",
            "LiveDataSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 1
    .param p1, "publisher"    # Lorg/reactivestreams/Publisher;

    .line 215
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>;"
    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mPublisher:Lorg/reactivestreams/Publisher;

    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 218
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .line 222
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>;"
    invoke-super {p0}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 223
    new-instance v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;-><init>(Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;)V

    .line 224
    .local v0, "s":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mPublisher:Lorg/reactivestreams/Publisher;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 226
    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 230
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>;"
    invoke-super {p0}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;->mSubscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;

    .line 232
    .local v0, "s":Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData<TT;>.LiveDataSubscriber;"
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData$LiveDataSubscriber;->cancelSubscription()V

    .line 235
    :cond_0
    return-void
.end method
