.class public final Lorg/ligi/passandroid/model/pass/PassField;
.super Ljava/lang/Object;
.source "PassField.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/model/pass/PassField$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B+\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0015\u001a\u00020\u0003R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "",
        "key",
        "",
        "label",
        "value",
        "hide",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getHide",
        "()Z",
        "setHide",
        "(Z)V",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "getLabel",
        "setLabel",
        "getValue",
        "setValue",
        "toHtmlSnippet",
        "Companion",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;


# instance fields
.field private hide:Z

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/pass/PassField$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "label"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "hide"    # Z

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassField;->key:Ljava/lang/String;

    iput-object p2, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    iput-object p3, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/ligi/passandroid/model/pass/PassField;->hide:Z

    return-void
.end method


# virtual methods
.method public final getHide()Z
    .locals 1

    .prologue
    .line 6
    iget-boolean v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->hide:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setHide(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .prologue
    .line 6
    iput-boolean p1, p0, Lorg/ligi/passandroid/model/pass/PassField;->hide:Z

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 6
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassField;->key:Ljava/lang/String;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 6
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 6
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    return-void
.end method

.method public final toHtmlSnippet()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .end local v0    # "it":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .restart local v0    # "it":Ljava/lang/String;
    iget-object v2, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .end local v0    # "it":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/pass/PassField;->label:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/ligi/passandroid/model/pass/PassField;->value:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 15
    :cond_2
    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
