.class final Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "lazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/LazyKt;->Provider(Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function0;",
        "T",
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
.field final synthetic $tag:Ljava/lang/Object;

.field final synthetic $type:Lcom/github/salomonbrys/kodein/TypeToken;

.field final synthetic receiver$0:Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->receiver$0:Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->$type:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->$tag:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->invoke()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->receiver$0:Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;

    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/LazyKodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/LazyKodein;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/LazyKodein;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->$type:Lcom/github/salomonbrys/kodein/TypeToken;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/LazyKt$Provider$1;->$tag:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/github/salomonbrys/kodein/Kodein;->Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method
