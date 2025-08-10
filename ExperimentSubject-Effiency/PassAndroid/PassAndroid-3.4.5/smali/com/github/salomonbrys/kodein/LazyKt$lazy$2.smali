.class final Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "lazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/LazyKt;->lazy(Lcom/github/salomonbrys/kodein/Kodein$Companion;ZLkotlin/jvm/functions/Function1;)Lcom/github/salomonbrys/kodein/LazyKodein;
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
.field final synthetic $allowSilentOverride:Z

.field final synthetic $f:Lkotlin/jvm/functions/Function1;

.field final synthetic receiver$0:Lcom/github/salomonbrys/kodein/Kodein$Companion;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Companion;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->receiver$0:Lcom/github/salomonbrys/kodein/Kodein$Companion;

    iput-boolean p2, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->$allowSilentOverride:Z

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->$f:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/github/salomonbrys/kodein/Kodein;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->receiver$0:Lcom/github/salomonbrys/kodein/Kodein$Companion;

    iget-boolean v1, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->$allowSilentOverride:Z

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->$f:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Companion;->invoke(ZLkotlin/jvm/functions/Function1;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/LazyKt$lazy$2;->invoke()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
