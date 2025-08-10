.class final Lcom/github/salomonbrys/kodein/KodeinAwareKt$With$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinAware.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/KodeinAwareKt;->With(Lcom/github/salomonbrys/kodein/KodeinAwareBase;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/CurriedKodeinFactory;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "A",
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
.field final synthetic receiver$0:Lcom/github/salomonbrys/kodein/KodeinAwareBase;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/KodeinAwareBase;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinAwareKt$With$1;->receiver$0:Lcom/github/salomonbrys/kodein/KodeinAwareBase;

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
    .line 112
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinAwareKt$With$1;->receiver$0:Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/KodeinAwareKt$With$1;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
