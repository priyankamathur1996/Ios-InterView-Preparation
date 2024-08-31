//
//  FinalKeyword.swift
//  Ios-InterView-Preparation
//
//  Created by Priyanka Mathur on 28/08/24.
//

import Foundation
/* What is the use of final keyword? */
/*
In Swift, the final keyword is used to restrict the inheritance and overriding of classes, methods, and properties. Here's an in-depth look:

Final Classes

When a class is declared as final, it cannot be subclassed or inherited from. This means that no other class can inherit its properties, methods, or behavior.


final class MyClass {
    // Class definition
}


Final Methods

When a method is declared as final, it cannot be overridden in any subclass. This ensures that the method's implementation remains unchanged.


class MyClass {
    final func myMethod() {
        // Method implementation
    }
}


Final Properties

When a property is declared as final, its value cannot be changed after initialization. This is similar to a constant, but final properties can be initialized in an initializer or property wrapper.


class MyClass {
    final var myProperty: String
    init() {
        myProperty = "Initial value"
    }
}


Why use final?

1. Prevent unintended subclassing: By making a class final, you ensure that it's not subclassed accidentally or maliciously.
2. Ensure method consistency: By making a method final, you guarantee that its implementation remains consistent across all instances.
3. Improve performance: The compiler can optimize final classes and methods, leading to better performance.
4. Reduce bugs: By limiting inheritance and overriding, you reduce the risk of bugs caused by unexpected behavior.

When to use final?

1. Utility classes: Classes that provide utility functions or constants can be made final to prevent subclassing.
2. Leaf classes: Classes that are not intended to be subclassed can be made final.
3. Critical methods: Methods that should not be overridden, such as those involving security or critical functionality, can be made final.
4. Immutable properties: Properties that should not be changed after initialization can be made final.

In summary, the final keyword in Swift helps you write more predictable, efficient, and bug-free code by controlling inheritance and overriding.
*/


////////////
///
//Here are the answers to the interview questions regarding the final keyword in Swift:
/*
1. What is the purpose of the final keyword in Swift?

The purpose of the final keyword is to prevent subclassing, method overriding, or property changes, ensuring that a class, method, or property remains unchanged.

2. Can you declare a final class inside another class?

Yes, you can declare a final class inside another class, which means the inner class cannot be subclassed.

3. How does final affect the performance of a class or method?

final can improve performance by allowing the compiler to optimize the code, as it knows that the class or method won't be overridden or changed.

4. Can you override a final method in a subclass?

No, you cannot override a final method in a subclass, as it's intended to remain unchanged.

5. What's the difference between final and private access modifiers?

final controls inheritance, while private controls access. final prevents subclassing, while private restricts access to a class, method, or property.

6. Can you declare a final property with a default value?

Yes, you can declare a final property with a default value, which means the property's value cannot be changed after initialization.

7. How does final interact with protocol inheritance?

final prevents protocol inheritance, while allowing class inheritance. A final class can still conform to protocols.

8. Can you use final with generic classes or methods?

Yes, you can use final with generic classes or methods, which ensures that the generic implementation remains unchanged.

9. What's the impact of final on code readability and maintainability?

final improves code readability and maintainability by clearly indicating that a class, method, or property is intended to remain unchanged.

10. Can you provide an example of when to use final in a real-world Swift project?

Use final for utility classes, leaf classes, critical methods, or immutable properties to ensure consistency and prevent unintended changes.

11. How does final affect the compiler's ability to inline methods?

final allows the compiler to inline methods more aggressively, as it knows that the method won't be overridden.

12. Can you declare a final subscript in Swift?

Yes, you can declare a final subscript, which means the subscript's implementation cannot be changed.

13. How does final interact with dynamic dispatch in Swift?

final disables dynamic dispatch for the marked class or method, allowing for more efficient static dispatch.

14. Can you use final with class constants in Swift?

Yes, you can use final with class constants, ensuring that the constant's value remains unchanged.

15. What's the difference between final and static keywords in Swift?

final prevents inheritance and changes, while static indicates that a property or method belongs to a type, rather than an instance.

I hope this helps! Let me know if you have any further questions.
*/


/*
 7. How does final interact with protocol inheritance?

 Here's an example of how final interacts with protocol inheritance in Swift:
 */

 // Define a protocol
 protocol MyProtocol {
     func doSomething()
 }

 // Define a final class that conforms to the protocol
 final class MyClass: MyProtocol {
     func doSomething() {
         print("Doing something...")
     }
 }

 // Try to inherit from the final class (won't work)
 // class MySubclass: MyClass {} // Error: Cannot inherit from final class 'MyClass'

 // Define another class that inherits from MyClass (won't work)
 // class MySubclass: MyClass {} // Error: Cannot inherit from final class 'MyClass'

 // Define another class that conforms to the protocol
 class AnotherClass: MyProtocol {
     func doSomething() {
         print("Doing something else...")
     }
 }
/*
 // Create instances and call the protocol method
 let obj1 = MyClass()
 obj1.doSomething() // Prints: Doing something...

 let obj2 = AnotherClass()
 obj2.doSomething() // Prints: Doing something else...
*/
 /*
 In this example:

 - MyClass is a final class that conforms to MyProtocol.
 - We cannot inherit from MyClass because it's marked as final.
 - We can define another class, AnotherClass, that conforms to the same protocol.
 - Both classes can implement the protocol methods independently.

 This demonstrates that a final class can still conform to protocols, but it cannot be subclassed. Other classes can still conform to the same protocols, allowing for polymorphism and flexibility in your code.
 */
