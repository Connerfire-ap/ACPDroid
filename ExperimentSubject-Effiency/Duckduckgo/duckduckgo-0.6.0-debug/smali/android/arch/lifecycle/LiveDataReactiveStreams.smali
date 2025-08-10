.class public final Landroid/arch/lifecycle/LiveDataReactiveStreams;
.super Ljava/lang/Object;
.source "LiveDataReactiveStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;,
        Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static fromPublisher(Lorg/reactivestreams/Publisher;)Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 187
    .local p0, "publisher":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<TT;>;"
    new-instance v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveDataReactiveStreams$PublisherLiveData;-><init>(Lorg/reactivestreams/Publisher;)V

    return-object v0
.end method

.method public static toPublisher(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/LiveData;)Lorg/reactivestreams/Publisher;
    .locals 1
    .param p0, "lifecycle"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;)",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p1, "liveData":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    new-instance v0, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;

    invoke-direct {v0, p0, p1}, Landroid/arch/lifecycle/LiveDataReactiveStreams$LiveDataPublisher;-><init>(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/LiveData;)V

    return-object v0
.end method
