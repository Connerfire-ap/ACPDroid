.class public final Ldagger/internal/ReferenceReleasingProvider;
.super Ljava/lang/Object;
.source "ReferenceReleasingProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private final provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile strongReference:Ljava/lang/Object;

.field private volatile weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    nop

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Ldagger/internal/ReferenceReleasingProvider;->provider:Ljavax/inject/Provider;

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static create(Ljavax/inject/Provider;Ldagger/internal/ReferenceReleasingProviderManager;)Ldagger/internal/ReferenceReleasingProvider;
    .locals 2
    .param p1, "references"    # Ldagger/internal/ReferenceReleasingProviderManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "references"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "TT;>;",
            "Ldagger/internal/ReferenceReleasingProviderManager;",
            ")",
            "Ldagger/internal/ReferenceReleasingProvider<",
            "TT;>;"
        }
    .end annotation

    .line 157
    .local p0, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    new-instance v0, Ldagger/internal/ReferenceReleasingProvider;

    .line 158
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Ldagger/internal/ReferenceReleasingProvider;-><init>(Ljavax/inject/Provider;)V

    .line 159
    .local v0, "provider":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    invoke-virtual {p1, v0}, Ldagger/internal/ReferenceReleasingProviderManager;->addProvider(Ldagger/internal/ReferenceReleasingProvider;)V

    .line 160
    return-object v0
.end method

.method private currentValue()Ljava/lang/Object;
    .locals 2

    .line 141
    .local p0, "this":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 142
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 143
    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 148
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    invoke-direct {p0}, Ldagger/internal/ReferenceReleasingProvider;->currentValue()Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Ldagger/internal/ReferenceReleasingProvider;->currentValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 128
    if-nez v0, :cond_1

    .line 129
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->provider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 130
    if-nez v0, :cond_0

    .line 131
    sget-object v1, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    move-object v0, v1

    .line 133
    :cond_0
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 135
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    :cond_2
    :goto_0
    sget-object v1, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public releaseStrongReference()V
    .locals 3

    .line 77
    .local p0, "this":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 78
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v1, Ldagger/internal/ReferenceReleasingProvider;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 79
    monitor-enter p0

    .line 81
    move-object v1, v0

    .line 82
    .local v1, "storedValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 84
    .end local v1    # "storedValue":Ljava/lang/Object;, "TT;"
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public restoreStrongReference()V
    .locals 2

    .line 93
    .local p0, "this":Ldagger/internal/ReferenceReleasingProvider;, "Ldagger/internal/ReferenceReleasingProvider<TT;>;"
    iget-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 94
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    move-object v0, v1

    .line 97
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iput-object v0, p0, Ldagger/internal/ReferenceReleasingProvider;->strongReference:Ljava/lang/Object;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/ReferenceReleasingProvider;->weakReference:Ljava/lang/ref/WeakReference;

    .line 104
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_1
    :goto_0
    return-void
.end method
