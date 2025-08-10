.class public final Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;
.super Lkotlin/jvm/internal/Lambda;
.source "lazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/LazyKt;->toProviderOrNull(Lkotlin/Lazy;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/jvm/functions/Function0",
        "<+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function0;",
        "T",
        "A",
        "",
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
.field final synthetic $arg:Lkotlin/jvm/functions/Function0;

.field final synthetic receiver$0:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/Lazy;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;->receiver$0:Lkotlin/Lazy;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;->$arg:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;->invoke()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;->receiver$0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "factory":Lkotlin/jvm/functions/Function1;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1$1;

    invoke-direct {v1, p0, v0}, Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1$1;-><init>(Lcom/github/salomonbrys/kodein/LazyKt$toProviderOrNull$1;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
