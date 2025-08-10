.class public final enum Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
.super Ljava/lang/Enum;
.source "PassBarCodeFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;",
        "",
        "(Ljava/lang/String;I)V",
        "isQuadratic",
        "",
        "zxingBarCodeFormat",
        "Lcom/google/zxing/BarcodeFormat;",
        "AZTEC",
        "CODE_39",
        "CODE_128",
        "DATA_MATRIX",
        "EAN_13",
        "ITF",
        "PDF_417",
        "QR_CODE",
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
.field private static final synthetic $VALUES:[Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum AZTEC:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum CODE_128:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum CODE_39:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum DATA_MATRIX:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum EAN_13:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum ITF:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum PDF_417:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field public static final enum QR_CODE:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v2, "AZTEC"

    invoke-direct {v1, v2, v3}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->AZTEC:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v1, v0, v3

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v2, "CODE_39"

    invoke-direct {v1, v2, v4}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->CODE_39:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v1, v0, v4

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v2, "CODE_128"

    invoke-direct {v1, v2, v5}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->CODE_128:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v1, v0, v5

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v2, "DATA_MATRIX"

    invoke-direct {v1, v2, v6}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->DATA_MATRIX:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v1, v0, v6

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v2, "EAN_13"

    invoke-direct {v1, v2, v7}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->EAN_13:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v3, "ITF"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->ITF:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v3, "PDF_417"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->PDF_417:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    const-string v3, "QR_CODE"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->QR_CODE:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->$VALUES:[Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .locals 1

    const-class v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-object v0
.end method

.method public static values()[Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .locals 1

    sget-object v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->$VALUES:[Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-virtual {v0}, [Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    return-object v0
.end method


# virtual methods
.method public final isQuadratic()Z
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 18
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    .line 17
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zxingBarCodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 21
    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 25
    :pswitch_3
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 26
    :pswitch_4
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 27
    :pswitch_5
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 28
    :pswitch_6
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 29
    :pswitch_7
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
