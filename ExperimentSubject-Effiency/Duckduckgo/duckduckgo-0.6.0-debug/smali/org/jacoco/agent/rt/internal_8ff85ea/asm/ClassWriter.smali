.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final ASM_LABEL_INSN:I = 0x12

.field static final BSM:I = 0x21

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final F_INSERT:I = 0x100

.field static final HANDLE:I = 0xf

.field static final HANDLE_BASE:I = 0x14

.field static final IINC_INSN:I = 0xd

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INDY:I = 0x12

.field static final INDYMETH_INSN:I = 0x8

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0xa

.field static final LABEL_INSN:I = 0x9

.field static final LDCW_INSN:I = 0xc

.field static final LDC_INSN:I = 0xb

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xf

.field static final MANA_INSN:I = 0x10

.field static final METH:I = 0xa

.field static final MTYPE:I = 0x10

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xe

.field static final TO_ACC_SYNTHETIC:I = 0x40

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0x20

.field static final TYPE_NORMAL:I = 0x1e

.field static final TYPE_UNINIT:I = 0x1f

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x11


# instance fields
.field private access:I

.field private anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

.field bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field bootstrapMethodsCount:I

.field private compute:I

.field cr:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

.field private enclosingMethod:I

.field private enclosingMethodOwner:I

.field firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

.field firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

.field hasAsmInsns:Z

.field private ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field index:I

.field private innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field private itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field final key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field final key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field final key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field final key4:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field lastField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

.field lastMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

.field private name:I

.field final pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private signature:I

.field private sourceDebug:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

.field private sourceFile:I

.field private superName:I

.field private tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field thisName:Ljava/lang/String;

.field threshold:I

.field private typeCount:S

.field typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 526
    const/16 v0, 0xdc

    new-array v0, v0, [B

    .line 527
    .local v0, "b":[B
    const-string v1, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKSSSSSSSSSSSSSSSSSS"

    .line 531
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_0
    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->TYPE:[B

    .line 603
    .end local v0    # "b":[B
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 618
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;-><init>(I)V

    .line 619
    const/4 v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    .line 620
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 621
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 622
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->threshold:I

    .line 623
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 624
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 625
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 626
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 627
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->compute:I

    .line 630
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;I)V
    .locals 0
    .param p1, "classReader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;
    .param p2, "flags"    # I

    .line 665
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;-><init>(I)V

    .line 666
    invoke-virtual {p1, p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->copyPool(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;)V

    .line 667
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    .line 668
    return-void
.end method

.method private addType(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 5
    .param p1, "item"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1663
    iget-short v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeCount:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeCount:S

    .line 1664
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1665
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1666
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    if-nez v1, :cond_0

    .line 1667
    const/16 v1, 0x10

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1669
    :cond_0
    iget-short v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeCount:S

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    array-length v3, v2

    if-ne v1, v3, :cond_1

    .line 1670
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1671
    .local v1, "newTable":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1672
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1674
    .end local v1    # "newTable":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget-short v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeCount:S

    aput-object v0, v1, v2

    .line 1675
    return-object v0
.end method

.method private get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 3
    .param p1, "key"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1756
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1757
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->isEqualTo(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1758
    :cond_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    goto :goto_0

    .line 1760
    :cond_1
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1568
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1569
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1570
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1571
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1573
    :cond_0
    return-object v0
.end method

.method private put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V
    .locals 8
    .param p1, "i"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1771
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-short v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeCount:S

    add-int/2addr v0, v1

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->threshold:I

    if-le v0, v1, :cond_2

    .line 1772
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    array-length v0, v0

    .line 1773
    .local v0, "ll":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 1774
    .local v1, "nl":I
    new-array v2, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1775
    .local v2, "newItems":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    add-int/lit8 v3, v0, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1776
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aget-object v4, v4, v3

    .line 1777
    .local v4, "j":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :goto_1
    if-eqz v4, :cond_0

    .line 1778
    iget v5, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    array-length v6, v2

    rem-int/2addr v5, v6

    .line 1779
    .local v5, "index":I
    iget-object v6, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1780
    .local v6, "k":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    aget-object v7, v2, v5

    iput-object v7, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1781
    aput-object v4, v2, v5

    .line 1782
    move-object v4, v6

    .line 1783
    .end local v5    # "index":I
    .end local v6    # "k":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    goto :goto_1

    .line 1775
    .end local v4    # "j":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1785
    .end local v3    # "l":I
    :cond_1
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1786
    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double v3, v3, v5

    double-to-int v3, v3

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->threshold:I

    .line 1788
    .end local v0    # "ll":I
    .end local v1    # "nl":I
    .end local v2    # "newItems":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :cond_2
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 1789
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1790
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aput-object p1, v1, v0

    .line 1791
    return-void
.end method

.method private put112(III)V
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "s"    # I

    .line 1818
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1819
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .line 1804
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1805
    return-void
.end method


# virtual methods
.method addType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 1622
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1624
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1625
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1627
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v1
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 1643
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x1f

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 1644
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iput p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 1645
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 1646
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, p2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 1647
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1648
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1649
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1651
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v1
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type1"    # Ljava/lang/String;
    .param p2, "type2"    # Ljava/lang/String;

    .line 1723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1725
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1726
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    .local v4, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1730
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1731
    return-object p1

    .line 1733
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1734
    return-object p2

    .line 1736
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1740
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1741
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1742
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1737
    :cond_3
    :goto_0
    const-string v1, "java/lang/Object"

    return-object v1

    .line 1727
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1728
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getMergedType(II)I
    .locals 6
    .param p1, "type1"    # I
    .param p2, "type2"    # I

    .line 1691
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x20

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    .line 1692
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    int-to-long v2, p1

    int-to-long v4, p2

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    iput-wide v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    .line 1693
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    add-int/lit8 v1, p1, 0x20

    add-int/2addr v1, p2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    .line 1694
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1695
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1696
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 1697
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    aget-object v2, v2, p2

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->strVal1:Ljava/lang/String;

    .line 1698
    .local v2, "u":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 1699
    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v3, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v3

    .line 1700
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1702
    .end local v1    # "t":Ljava/lang/String;
    .end local v2    # "u":Ljava/lang/String;
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    return v1
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1140
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1121
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1122
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1123
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1124
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1126
    :cond_0
    return-object v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1084
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 7
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1026
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1027
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1028
    .local v0, "val":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1029
    .end local v0    # "val":I
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 1030
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 1031
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1032
    .end local v0    # "val":I
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 1033
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 1034
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1035
    .end local v0    # "val":I
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 1036
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    .line 1037
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1038
    .end local v0    # "val":I
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1039
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1040
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1041
    .end local v0    # "val":I
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1042
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1043
    .local v0, "val":F
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newFloat(F)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1044
    .end local v0    # "val":F
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1045
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1046
    .local v0, "val":J
    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newLong(J)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v2

    return-object v2

    .line 1047
    .end local v0    # "val":J
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 1048
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1049
    .local v0, "val":D
    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newDouble(D)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v2

    return-object v2

    .line 1050
    .end local v0    # "val":D
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1051
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newString(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_8
    instance-of v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    if-eqz v0, :cond_b

    .line 1053
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    .line 1054
    .local v0, "t":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getSort()I

    move-result v1

    .line 1055
    .local v1, "s":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 1056
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v2

    return-object v2

    .line 1057
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 1058
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v2

    return-object v2

    .line 1060
    :cond_a
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v2

    return-object v2

    .line 1062
    .end local v0    # "t":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    .end local v1    # "s":I
    :cond_b
    instance-of v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;

    if-eqz v0, :cond_c

    .line 1063
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;

    .line 1064
    .local v0, "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->tag:I

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->owner:Ljava/lang/String;

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->name:Ljava/lang/String;

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->desc:Ljava/lang/String;

    iget-boolean v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->itf:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    return-object v1

    .line 1066
    .end local v0    # "h":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newDouble(D)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # D

    .line 1546
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(D)V

    .line 1547
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1548
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1549
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget-wide v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->longVal:J

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putLong(J)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1550
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1551
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    .line 1552
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1554
    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1428
    invoke-virtual {p0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1405
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1406
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put122(III)V

    .line 1407
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1408
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1410
    :cond_0
    return-object v0
.end method

.method newFloat(F)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # F

    .line 1507
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(F)V

    .line 1508
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1509
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1510
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1511
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1512
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1514
    :cond_0
    return-object v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1250
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 1280
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 1205
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1207
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_1

    .line 1208
    const/4 v1, 0x4

    const/16 v2, 0xf

    if-gt p1, v1, :cond_0

    .line 1209
    invoke-virtual {p0, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put112(III)V

    goto :goto_0

    .line 1211
    :cond_0
    nop

    .line 1213
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 1211
    invoke-direct {p0, v2, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put112(III)V

    .line 1215
    :goto_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1216
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1218
    :cond_1
    return-object v0
.end method

.method newInteger(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # I

    .line 1488
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(I)V

    .line 1489
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1490
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1491
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1492
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1493
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1495
    :cond_0
    return-object v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1387
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method varargs newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1303
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1304
    .local v0, "bootstrapMethods":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    if-nez v0, :cond_0

    .line 1305
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-object v0, v1

    .line 1308
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    .line 1310
    .local v1, "position":I
    invoke-virtual {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->hashCode()I

    move-result v2

    .line 1311
    .local v2, "hashCode":I
    iget v4, p3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->tag:I

    iget-object v5, p3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->owner:Ljava/lang/String;

    iget-object v6, p3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->name:Ljava/lang/String;

    iget-object v7, p3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->desc:Ljava/lang/String;

    .line 1312
    invoke-virtual {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;->isInterface()Z

    move-result v8

    .line 1311
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1314
    array-length v3, p4

    .line 1315
    .local v3, "argsLength":I
    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1317
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1318
    aget-object v5, p4, v4

    .line 1319
    .local v5, "bsmArg":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v2, v6

    .line 1320
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1317
    .end local v5    # "bsmArg":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1323
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    .line 1324
    .local v4, "data":[B
    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v5, v5, 0x1

    .line 1325
    .local v5, "length":I
    const v6, 0x7fffffff

    and-int/2addr v2, v6

    .line 1326
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    array-length v7, v6

    rem-int v7, v2, v7

    aget-object v6, v6, v7

    .line 1327
    .local v6, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    :goto_1
    if-eqz v6, :cond_6

    .line 1328
    iget v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->type:I

    const/16 v8, 0x21

    if-ne v7, v8, :cond_5

    iget v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    if-eq v7, v2, :cond_2

    goto :goto_3

    .line 1335
    :cond_2
    iget v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 1336
    .local v7, "resultPosition":I
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 1337
    add-int v9, v1, v8

    aget-byte v9, v4, v9

    add-int v10, v7, v8

    aget-byte v10, v4, v10

    if-eq v9, v10, :cond_3

    .line 1338
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1339
    goto :goto_1

    .line 1336
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1342
    .end local v8    # "p":I
    :cond_4
    goto :goto_4

    .line 1329
    .end local v7    # "resultPosition":I
    :cond_5
    :goto_3
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 1330
    goto :goto_1

    .line 1346
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 1347
    iget v7, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    .line 1348
    .local v7, "bootstrapMethodIndex":I
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    goto :goto_5

    .line 1350
    .end local v7    # "bootstrapMethodIndex":I
    :cond_7
    iget v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethodsCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 1351
    .restart local v7    # "bootstrapMethodIndex":I
    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v8, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(I)V

    move-object v6, v8

    .line 1352
    invoke-virtual {v6, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(II)V

    .line 1353
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1357
    :goto_5
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v8, p1, p2, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1358
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v6

    .line 1359
    if-nez v6, :cond_8

    .line 1360
    const/16 v8, 0x12

    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v8, v7, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put122(III)V

    .line 1361
    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v8, v9, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v6, v8

    .line 1362
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1364
    :cond_8
    return-object v6
.end method

.method newLong(J)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "value"    # J

    .line 1526
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(J)V

    .line 1527
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1528
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1529
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putLong(J)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1530
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1531
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    .line 1532
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1534
    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1476
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1447
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1448
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v1

    .line 1450
    .local v1, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v1, :cond_1

    .line 1451
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put122(III)V

    .line 1452
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v1, v2

    .line 1453
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1455
    :cond_1
    return-object v1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 1176
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1156
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1157
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1158
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1159
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1161
    :cond_0
    return-object v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1589
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1605
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1606
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put122(III)V

    .line 1607
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1608
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1610
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 1100
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    if-nez v0, :cond_0

    .line 1101
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 1102
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    move-object v0, v1

    .line 1103
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;)V

    .line 1105
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 30

    .line 822
    move-object/from16 v7, p0

    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    const v6, 0xffff

    if-gt v0, v6, :cond_22

    .line 826
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaceCount:I

    const/4 v8, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    .line 827
    .local v0, "size":I
    const/4 v1, 0x0

    .line 828
    .local v1, "nbFields":I
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    move v9, v1

    move-object v10, v2

    .line 829
    .end local v1    # "nbFields":I
    .local v9, "nbFields":I
    .local v10, "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    :goto_0
    if-eqz v10, :cond_0

    .line 830
    add-int/lit8 v9, v9, 0x1

    .line 831
    invoke-virtual {v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    iget-object v1, v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    move-object v10, v1

    check-cast v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    goto :goto_0

    .line 834
    :cond_0
    const/4 v1, 0x0

    .line 835
    .local v1, "nbMethods":I
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    move v11, v1

    move-object v12, v2

    .line 836
    .end local v1    # "nbMethods":I
    .local v11, "nbMethods":I
    .local v12, "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :goto_1
    if-eqz v12, :cond_1

    .line 837
    add-int/lit8 v11, v11, 0x1

    .line 838
    invoke-virtual {v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    iget-object v1, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-object v12, v1

    check-cast v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    goto :goto_1

    .line 841
    :cond_1
    const/4 v1, 0x0

    .line 842
    .local v1, "attributeCount":I
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const-string v13, "BootstrapMethods"

    if-eqz v2, :cond_2

    .line 845
    add-int/lit8 v1, v1, 0x1

    .line 846
    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 847
    invoke-virtual {v7, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 849
    :cond_2
    iget v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->signature:I

    const-string v14, "Signature"

    if-eqz v2, :cond_3

    .line 850
    add-int/lit8 v1, v1, 0x1

    .line 851
    add-int/lit8 v0, v0, 0x8

    .line 852
    invoke-virtual {v7, v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 854
    :cond_3
    iget v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceFile:I

    const-string v15, "SourceFile"

    if-eqz v2, :cond_4

    .line 855
    add-int/lit8 v1, v1, 0x1

    .line 856
    add-int/lit8 v0, v0, 0x8

    .line 857
    invoke-virtual {v7, v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 859
    :cond_4
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const-string v5, "SourceDebugExtension"

    if-eqz v2, :cond_5

    .line 860
    add-int/lit8 v1, v1, 0x1

    .line 861
    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    .line 862
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 864
    :cond_5
    iget v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethodOwner:I

    const-string v4, "EnclosingMethod"

    if-eqz v2, :cond_6

    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 866
    add-int/lit8 v0, v0, 0xa

    .line 867
    invoke-virtual {v7, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 869
    :cond_6
    iget v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    const/high16 v16, 0x20000

    and-int v2, v2, v16

    const-string v3, "Deprecated"

    if-eqz v2, :cond_7

    .line 870
    add-int/lit8 v1, v1, 0x1

    .line 871
    add-int/lit8 v0, v0, 0x6

    .line 872
    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 874
    :cond_7
    iget v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    and-int/lit16 v8, v2, 0x1000

    move-object/from16 v17, v5

    const-string v5, "Synthetic"

    move-object/from16 v18, v4

    const/16 v4, 0x31

    const/high16 v19, 0x40000

    if-eqz v8, :cond_9

    .line 875
    iget v8, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v8, v6

    if-lt v8, v4, :cond_8

    and-int v2, v2, v19

    if-eqz v2, :cond_9

    .line 877
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 878
    add-int/lit8 v0, v0, 0x6

    .line 879
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 882
    :cond_9
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const-string v8, "InnerClasses"

    if-eqz v2, :cond_a

    .line 883
    add-int/lit8 v1, v1, 0x1

    .line 884
    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 885
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 887
    :cond_a
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    const-string v6, "RuntimeVisibleAnnotations"

    if-eqz v2, :cond_b

    .line 888
    add-int/lit8 v1, v1, 0x1

    .line 889
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 890
    invoke-virtual {v7, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 892
    :cond_b
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    move-object/from16 v20, v5

    const-string v5, "RuntimeInvisibleAnnotations"

    if-eqz v2, :cond_c

    .line 893
    add-int/lit8 v1, v1, 0x1

    .line 894
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 895
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 897
    :cond_c
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    move-object/from16 v21, v5

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v2, :cond_d

    .line 898
    add-int/lit8 v1, v1, 0x1

    .line 899
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 900
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 902
    :cond_d
    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    .line 903
    add-int/lit8 v1, v1, 0x1

    .line 904
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 905
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move/from16 v22, v0

    goto :goto_2

    .line 902
    :cond_e
    move/from16 v22, v0

    .line 907
    .end local v0    # "size":I
    .local v22, "size":I
    :goto_2
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v0, :cond_f

    .line 908
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getCount()I

    move-result v0

    add-int v23, v1, v0

    .line 909
    .end local v1    # "attributeCount":I
    .local v23, "attributeCount":I
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    const/4 v2, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v1, p0

    move-object/from16 v27, v3

    move/from16 v3, v24

    move-object/from16 v28, v18

    move/from16 v4, v25

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v5

    move-object/from16 v29, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v29

    .end local v10    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v12    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .local v17, "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .local v18, "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    move/from16 v5, v26

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIII)I

    move-result v0

    add-int v22, v22, v0

    move/from16 v5, v23

    goto :goto_3

    .line 907
    .end local v17    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .end local v18    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v23    # "attributeCount":I
    .restart local v1    # "attributeCount":I
    .restart local v10    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .restart local v12    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :cond_f
    move-object/from16 v27, v3

    move-object/from16 v28, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v5

    move-object/from16 v29, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v29

    .end local v10    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v12    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v17    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v18    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    move v5, v1

    .line 911
    .end local v1    # "attributeCount":I
    .local v5, "attributeCount":I
    :goto_3
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int v4, v22, v0

    .line 914
    .end local v22    # "size":I
    .local v4, "size":I
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>(I)V

    move-object v3, v0

    .line 915
    .local v3, "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 916
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    move/from16 v22, v4

    .end local v4    # "size":I
    .restart local v22    # "size":I
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 917
    const/high16 v0, 0x60000

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    and-int v2, v1, v19

    div-int/lit8 v2, v2, 0x40

    or-int/2addr v2, v0

    .line 919
    .local v2, "mask":I
    not-int v0, v2

    and-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->name:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->superName:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 920
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_10

    .line 922
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaces:[I

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 924
    .end local v0    # "i":I
    :cond_10
    invoke-virtual {v3, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 925
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    move-object v1, v0

    .line 926
    .end local v18    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .local v1, "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    :goto_5
    if-eqz v1, :cond_11

    .line 927
    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 928
    iget-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    goto :goto_5

    .line 930
    :cond_11
    invoke-virtual {v3, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 931
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    .line 932
    .end local v17    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .local v0, "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :goto_6
    if-eqz v0, :cond_12

    .line 933
    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 934
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-object v0, v4

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    const/4 v4, 0x0

    goto :goto_6

    .line 936
    :cond_12
    invoke-virtual {v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 937
    iget-object v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v4, :cond_13

    .line 938
    invoke-virtual {v7, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 939
    iget-object v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    const/4 v13, 0x2

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v4

    iget v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethodsCount:I

    invoke-virtual {v4, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 941
    iget-object v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v13, v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .local v18, "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    invoke-virtual {v3, v4, v0, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_7

    .line 937
    .end local v18    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v0    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :cond_13
    move-object/from16 v18, v0

    .line 943
    .end local v0    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v18    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :goto_7
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->signature:I

    if-eqz v0, :cond_14

    .line 944
    invoke-virtual {v7, v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->signature:I

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 946
    :cond_14
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceFile:I

    if-eqz v0, :cond_15

    .line 947
    invoke-virtual {v7, v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceFile:I

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 949
    :cond_15
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v0, :cond_16

    .line 950
    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    .line 951
    .local v0, "len":I
    invoke-virtual {v7, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 952
    iget-object v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 954
    .end local v0    # "len":I
    :cond_16
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethodOwner:I

    if-eqz v0, :cond_17

    .line 955
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 956
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethodOwner:I

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethod:I

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 958
    :cond_17
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    and-int v0, v0, v16

    if-eqz v0, :cond_18

    .line 959
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 961
    :cond_18
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_1a

    .line 962
    iget v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    const v12, 0xffff

    and-int/2addr v4, v12

    const/16 v12, 0x31

    if-lt v4, v12, :cond_19

    and-int v0, v0, v19

    if-eqz v0, :cond_1a

    .line 964
    :cond_19
    invoke-virtual {v7, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 967
    :cond_1a
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-eqz v0, :cond_1b

    .line 968
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 969
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    const/4 v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iget v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClassesCount:I

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 970
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    iget-object v4, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    goto :goto_8

    .line 967
    :cond_1b
    const/4 v8, 0x0

    .line 972
    :goto_8
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v0, :cond_1c

    .line 973
    invoke-virtual {v7, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 974
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 976
    :cond_1c
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v0, :cond_1d

    .line 977
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 978
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 980
    :cond_1d
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    .line 981
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 982
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 984
    :cond_1e
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    .line 985
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 986
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 988
    :cond_1f
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v0, :cond_20

    .line 989
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v13, v18

    .end local v18    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .local v13, "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    move-object v14, v1

    .end local v1    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .local v14, "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    move-object/from16 v1, p0

    move v15, v2

    .end local v2    # "mask":I
    .local v15, "mask":I
    move-object v2, v4

    move-object v4, v3

    .end local v3    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .local v4, "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    move v3, v6

    move-object v8, v4

    const/4 v6, 0x0

    .end local v4    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .local v8, "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    move v4, v10

    move/from16 v23, v5

    .end local v5    # "attributeCount":I
    .restart local v23    # "attributeCount":I
    move v5, v12

    const/4 v10, 0x0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    goto :goto_9

    .line 988
    .end local v8    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .end local v13    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .end local v14    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v15    # "mask":I
    .end local v23    # "attributeCount":I
    .restart local v1    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .restart local v2    # "mask":I
    .restart local v3    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .restart local v5    # "attributeCount":I
    .restart local v18    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    :cond_20
    move-object v14, v1

    move v15, v2

    move-object v8, v3

    move/from16 v23, v5

    move-object/from16 v13, v18

    const/4 v10, 0x0

    .line 991
    .end local v1    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v2    # "mask":I
    .end local v3    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .end local v5    # "attributeCount":I
    .end local v18    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v8    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .restart local v13    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .restart local v14    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .restart local v15    # "mask":I
    .restart local v23    # "attributeCount":I
    :goto_9
    iget-boolean v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->hasAsmInsns:Z

    if-eqz v0, :cond_21

    .line 992
    const/4 v0, 0x0

    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 993
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 994
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 995
    iput v10, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClassesCount:I

    .line 996
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 997
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    .line 998
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    .line 999
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    .line 1000
    iput-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    .line 1001
    const/4 v0, 0x1

    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->compute:I

    .line 1002
    iput-boolean v10, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->hasAsmInsns:Z

    .line 1003
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    iget-object v1, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    const/16 v1, 0x108

    invoke-virtual {v0, v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 1007
    :cond_21
    iget-object v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->data:[B

    return-object v0

    .line 823
    .end local v8    # "out":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    .end local v9    # "nbFields":I
    .end local v11    # "nbMethods":I
    .end local v13    # "mb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .end local v14    # "fb":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
    .end local v15    # "mask":I
    .end local v22    # "size":I
    .end local v23    # "attributeCount":I
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Class file too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 678
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    .line 679
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->access:I

    .line 680
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->name:I

    .line 681
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 682
    if-eqz p4, :cond_0

    .line 683
    invoke-virtual {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->signature:I

    .line 685
    :cond_0
    if-nez p5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->superName:I

    .line 686
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 687
    array-length v0, p6

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaceCount:I

    .line 688
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaces:[I

    .line 689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_2

    .line 690
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->interfaces:[I

    aget-object v2, p6, v0

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 693
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 721
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 723
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 724
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 725
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 726
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 727
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 729
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 730
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 732
    :goto_0
    return-object v1
.end method

.method public final visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 760
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 761
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 762
    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .line 810
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 798
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 767
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 780
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    .line 781
    .local v0, "nameItem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    if-nez v1, :cond_3

    .line 782
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClassesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClassesCount:I

    .line 783
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 784
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 785
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 786
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-virtual {v1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 787
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->innerClassesCount:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->intVal:I

    .line 793
    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 804
    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    iget v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->compute:I

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v8
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 709
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethodOwner:I

    .line 710
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 711
    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->enclosingMethod:I

    .line 713
    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 697
    if-eqz p1, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceFile:I

    .line 700
    :cond_0
    if-eqz p2, :cond_1

    .line 701
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 704
    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 741
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 743
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 745
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 746
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 748
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 749
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 750
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 752
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 753
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 755
    :goto_0
    return-object v1
.end method
