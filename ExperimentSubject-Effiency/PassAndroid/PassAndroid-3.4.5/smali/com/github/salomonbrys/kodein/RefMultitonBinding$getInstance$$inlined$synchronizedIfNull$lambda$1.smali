.class final Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "references.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/RefMultitonBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $arg$inlined:Ljava/lang/Object;

.field final synthetic $kodein$inlined:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

.field final synthetic $ret$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/RefMultitonBinding;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/RefMultitonBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->this$0:Lcom/github/salomonbrys/kodein/RefMultitonBinding;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->$kodein$inlined:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->$arg$inlined:Ljava/lang/Object;

    iput-object p4, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->$ret$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->this$0:Lcom/github/salomonbrys/kodein/RefMultitonBinding;

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/RefMultitonBinding;->getCreator()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->$kodein$inlined:Lcom/github/salomonbrys/kodein/bindings/BindingKodein;

    iget-object v2, p0, Lcom/github/salomonbrys/kodein/RefMultitonBinding$getInstance$$inlined$synchronizedIfNull$lambda$1;->$arg$inlined:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
