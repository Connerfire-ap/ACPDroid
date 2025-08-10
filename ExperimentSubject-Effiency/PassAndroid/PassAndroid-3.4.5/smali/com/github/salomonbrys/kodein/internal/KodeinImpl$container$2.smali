.class final Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/github/salomonbrys/kodein/KodeinContainer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->access$get_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kodein has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_container:Lcom/github/salomonbrys/kodein/KodeinContainer;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->access$get_container$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$container$2;->invoke()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    return-object v0
.end method
