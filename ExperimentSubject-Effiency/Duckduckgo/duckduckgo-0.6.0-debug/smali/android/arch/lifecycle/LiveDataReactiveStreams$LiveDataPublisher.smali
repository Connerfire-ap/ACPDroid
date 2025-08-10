.class final Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;
.super Ljava/lang/Object;
.source "LiveDataReactiveStreams.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveDataReactiveStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LiveDataPublisher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

.field final mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .param p1, "lifecycle"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher<TT;>;"
    .local p2, "liveData":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;->mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

    .line 65
    iput-object p2, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;->mLiveData:Landroid/arch/lifecycle/LiveData;

    .line 66
    return-void
.end method


# virtual methods
.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;, "Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;->mLifecycle:Landroid/arch/lifecycle/LifecycleOwner;

    iget-object v2, p0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-direct {v0, p1, v1, v2}, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher$LiveDataSubscription;-><init>(Lorg/reactivestreams/Subscriber;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/LiveData;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 71
    return-void
.end method
