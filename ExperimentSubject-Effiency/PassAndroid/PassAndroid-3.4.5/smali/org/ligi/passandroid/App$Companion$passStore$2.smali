.class final Lorg/ligi/passandroid/App$Companion$passStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "App.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/App;
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
        "Lorg/ligi/passandroid/model/PassStore;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ligi/passandroid/model/PassStore;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/App$Companion$passStore$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ligi/passandroid/App$Companion$passStore$2;

    invoke-direct {v0}, Lorg/ligi/passandroid/App$Companion$passStore$2;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/App$Companion$passStore$2;->INSTANCE:Lorg/ligi/passandroid/App$Companion$passStore$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/ligi/passandroid/App$Companion$passStore$2;->invoke()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ligi/passandroid/model/PassStore;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    sget-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    const-class v1, Lorg/ligi/passandroid/model/PassStore;

    invoke-static {v1}, Lcom/github/salomonbrys/kodein/TypesKt;->TT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Instance$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method
