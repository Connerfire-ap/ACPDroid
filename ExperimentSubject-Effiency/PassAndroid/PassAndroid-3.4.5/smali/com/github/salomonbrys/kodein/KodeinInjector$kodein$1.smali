.class final Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Injector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/KodeinInjector;->kodein()Lkotlin/Lazy;
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
        "Lcom/github/salomonbrys/kodein/Kodein;",
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
        "Lcom/github/salomonbrys/kodein/Kodein;",
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
.field final synthetic this$0:Lcom/github/salomonbrys/kodein/KodeinInjector;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/KodeinInjector;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;->this$0:Lcom/github/salomonbrys/kodein/KodeinInjector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;->this$0:Lcom/github/salomonbrys/kodein/KodeinInjector;

    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinInjector$UninjectedException;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/KodeinInjector$UninjectedException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
