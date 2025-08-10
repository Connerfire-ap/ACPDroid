.class final Lcom/google/firebase/iid/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzz;


# instance fields
.field private zznuq:Landroid/os/Bundle;

.field private final zznuv:Landroid/os/ConditionVariable;

.field private zznuw:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzy;->zznuv:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/zzy;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zznuw:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/firebase/iid/zzy;->zznuv:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final zzag(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zznuq:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/firebase/iid/zzy;->zznuv:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final zzchk()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zznuv:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zznuw:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zznuq:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/firebase/iid/zzy;->zznuw:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "FirebaseInstanceId"

    const-string v1, "No response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
